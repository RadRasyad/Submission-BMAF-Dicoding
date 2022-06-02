
import 'package:flutter/material.dart';

import 'package:resepbapak/data/dummy_data.dart';
import 'package:resepbapak/ui/detail/detail_activity.dart';

class WebRecipeList extends StatelessWidget {
  final int gridCount;
  final double padHorizontal;
  final double padVertical;

  const WebRecipeList({
    Key? key,
    required this.gridCount,
    required this.padHorizontal,
    required this.padVertical,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: padHorizontal, vertical: padVertical),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        children: listOfRecipe.map((recipe) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailActivity(
                  recipe: recipe,
                );
              }));
            },
            child: Expanded(
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            recipe.img,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Expanded(
                            child: Text(
                              recipe.name,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Ubuntu'),
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  const Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    recipe.rating,
                                    style: const TextStyle(
                                        fontSize: 12, fontFamily: 'Ubuntu'),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  const Icon(
                                    Icons.access_time,
                                    size: 18,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    recipe.time,
                                    style: const TextStyle(
                                        fontSize: 12, fontFamily: 'Ubuntu'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}