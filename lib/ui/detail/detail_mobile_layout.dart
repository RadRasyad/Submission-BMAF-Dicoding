import 'package:flutter/material.dart';
import 'package:resepbapak/model/recipe.dart';
import 'package:resepbapak/ui/detail/detail_activity.dart';

class DetailMobileLayout extends StatelessWidget {
  Recipe recipe;

  DetailMobileLayout(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(35.0),
                      bottomRight: Radius.circular(35.0)),
                    child: Image.asset(recipe.img),
                ),
                SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black38,
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const BookmarkButton(),
                    ],
                  ),
                ))
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16.0),
              child: Text(
                recipe.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 28,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Icon(
                    Icons.star,
                    size: 22,
                    color: Colors.yellow,
                  ),
                  Text(
                    recipe.rating,
                    style: const TextStyle(fontFamily: 'Ubuntu', fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
              child: Text(
                recipe.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontFamily: 'Ubuntu',
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.access_time),
                      const SizedBox(height: 8.0),
                      Text(
                        recipe.time,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.group),
                      const SizedBox(height: 8.0),
                      Text(
                        recipe.portion,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.category),
                      const SizedBox(height: 8.0),
                      Text(
                        recipe.category,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Bahan',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 24),
                  ),
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
            Container(
              width: 380,
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Cara Membuat',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 24),
                  ),
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
            const SizedBox(width: 32.0),
          ],
        ),
      ),
    );
  }
}