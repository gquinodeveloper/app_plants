class CategoryModel {
  CategoryModel({
    required this.text,
    this.status = false,
  });
  String text;
  bool status;
}

List<CategoryModel> categories = [
  CategoryModel(
    text: "All",
    status: true,
  ),
  CategoryModel(
    text: "Indoor",
  ),
  CategoryModel(
    text: "Outdoor",
  ),
  CategoryModel(
    text: "Live",
  ),
];
