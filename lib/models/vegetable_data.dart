class VegetableItemModel {
  late final String imagePath;
  late final String name;
  late final String price;
  VegetableItemModel(
      {required this.imagePath, required this.name, required this.price});
  static final vegetableItemList = [
    VegetableItemModel(
        imagePath: "assets/images/pepper_red.png",
        name: "Bell Pepper Red",
        price: "1kg, 6\$"),
    VegetableItemModel(
        imagePath: "assets/images/butternut.png",
        name: "Butternut Squash ",
        price: "1kg, 6\$"),
    VegetableItemModel(
        imagePath: "assets/images/ginger.png",
        name: "Arabic Ginger",
        price: "1kg, 4\$"),
    VegetableItemModel(
        imagePath: "assets/images/carrots.png",
        name: "Organic Carrots",
        price: "1kg, 4\$"),
    VegetableItemModel(
        imagePath: "assets/images/pepper_red.png",
        name: "Bell Pepper Red",
        price: "1kg, 6\$"),
    VegetableItemModel(
        imagePath: "assets/images/butternut.png",
        name: "Butternut Squash ",
        price: "1kg, 6\$"),
    VegetableItemModel(
        imagePath: "assets/images/ginger.png",
        name: "Arabic Ginger",
        price: "1kg, 4\$"),
    VegetableItemModel(
        imagePath: "assets/images/carrots.png",
        name: "Organic Carrots",
        price: "1kg, 4\$"),
  ];
}
