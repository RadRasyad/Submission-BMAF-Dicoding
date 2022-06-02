class Recipe {
  String id;
  String name;
  String rating;
  String img;
  String time;
  String category;
  String portion;
  String description;
  List<String> ingredient;
  List<String> stages;

  Recipe(
      {required this.id,
      required this.name,
      required this.rating,
      required this.img,
      required this.time,
      required this.category,
      required this.portion,
      required this.description,
      required this.ingredient,
      required this.stages});
}
