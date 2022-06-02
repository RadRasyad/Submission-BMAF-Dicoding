import 'package:flutter/material.dart';
import 'package:resepbapak/model/recipe.dart';
import 'package:resepbapak/ui/detail/detail_activity.dart';

class DetailWebLayout extends StatelessWidget {
  Recipe recipe;
  final double padHorizontal;
  final double padVertical;

  DetailWebLayout(this.recipe,
      {Key? key, required this.padHorizontal, required this.padVertical})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Resep Bapak',
          style: TextStyle(fontFamily: 'Ubuntu'),
        ),
        backgroundColor: const Color(0xFFEE7465),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: padHorizontal, vertical: padVertical),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(recipe.img),
                      ),
                      const SizedBox(width: 32.0),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 32.0),
                          Text(
                            recipe.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 32,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              const Icon(
                                Icons.star,
                                size: 30,
                                color: Colors.yellow,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                recipe.rating,
                                style: const TextStyle(
                                    fontFamily: 'Ubuntu', fontSize: 20),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Text(
                            recipe.description,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )),
                      const BookmarkButton(),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Bahan',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontFamily: 'Ubuntu', fontSize: 24),
                              ),
                              const SizedBox(height: 8),
                              ListView(
                                primary: false,
                                shrinkWrap: true,
                                children: recipe.ingredient.map((ing) {
                                  return Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4.0, right: 4.0, bottom: 4.0),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.circle,
                                            size: 8,
                                          ),
                                          const SizedBox(
                                            width: 4.0,
                                          ),
                                          Text(
                                            ing,
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontFamily: 'Ubuntu',
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ));
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Cara Membuat',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontFamily: 'Ubuntu', fontSize: 24),
                              ),
                              const SizedBox(height: 8),
                              ListView.builder(
                                primary: false,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  final List<String> stages = recipe.stages;
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0, right: 4.0, bottom: 4.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          (index + 1).toString(),
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(width: 8.0),
                                        Expanded(
                                          child: Text(
                                            stages[index],
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                              fontFamily: 'Ubuntu',
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                itemCount: recipe.stages.length,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
