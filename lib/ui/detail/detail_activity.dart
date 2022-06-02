
import 'package:flutter/material.dart';
import 'package:resepbapak/model/recipe.dart';
import 'package:resepbapak/ui/detail/detail_mobile_layout.dart';
import 'package:resepbapak/ui/detail/detail_web_layout.dart';

class DetailActivity extends StatelessWidget {
  final Recipe recipe;
  const DetailActivity({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 800) {
            return DetailMobileLayout(recipe);
          } else if (constraints.maxWidth <= 1200) {
            return DetailWebLayout(recipe, padHorizontal: 20.0, padVertical: 15.0);
          } else {
            return DetailWebLayout(recipe, padHorizontal: 180.0, padVertical: 15.0);
          }
        }
    );
  }

}

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BookmarkButton();
}

class _BookmarkButton extends State<BookmarkButton> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black38,
      child: IconButton(
        icon: Icon(
          isBookmarked ? Icons.bookmark : Icons.bookmark_outline,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            isBookmarked = !isBookmarked;
          });
        },
      ),
    );
  }
}