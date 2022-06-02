
import 'package:flutter/material.dart';
import 'package:resepbapak/ui/home/home_mobile_layout.dart';
import 'package:resepbapak/ui/home/home_web_layout.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
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
            if (constraints.maxWidth <= 650) {
              return const MobileRecipeList(gridCount: 2, costumPadding: 8.0);
            } else if (constraints.maxWidth <= 900) {
              return const WebRecipeList(
                  gridCount: 3, padHorizontal: 45.0, padVertical: 15.0);
            } else if (constraints.maxWidth <= 1200) {
              return const WebRecipeList(
                  gridCount: 4, padHorizontal: 60.0, padVertical: 15.0);
            } else {
              return const WebRecipeList(
                  gridCount: 5, padHorizontal: 120.0, padVertical: 15.0);
            }
          },
        ),
      );
    });
  }
}
