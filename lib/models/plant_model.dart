class PlantModel {
  PlantModel({
    required this.path,
    required this.category,
    required this.title,
    required this.description,
    required this.price,
  });

  String path;
  String category;
  String title;
  String description;
  double price;
}

List<PlantModel> plants = [
  PlantModel(
    path: "assets/plant_1.png",
    category: "Indoor",
    title: "Cactus Lily",
    description:
        "An Align widget usually takes widget to extreme positions. So for example, if we enter top-right, we need to add extra padding to keep it neat and tidy. A Positioned widget combines these two things and lets us keep one Positioned widget instead of an Align and a Padding. We will see how in a while. An Align widget usually takes widget to extreme positions. So for example, if we enter top-right, we need to add extra padding to keep it neat and tidy. A Positioned widget combines these two things and lets us keep one Positioned widget instead of an Align and a Padding. We will see how in a while. An Align widget usually takes widget to extreme positions. So for example, if we enter top-right, we need to add extra padding to keep it neat and tidy. A Positioned widget combines these two things and lets us keep one Positioned widget instead of an Align and a Padding. We will see how in a while. An Align widget usually takes widget to extreme positions. So for example, if we enter top-right, we need to add extra padding to keep it neat and tidy. A Positioned widget combines these two things and lets us keep one Positioned widget instead of an Align and a Padding. We will see how in a while.",
    price: 30.00,
  ),
  PlantModel(
    path: "assets/plant_3.png",
    category: "Outdoor",
    title: "Bonzai Dragor",
    description:
        "An Align widget usually takes widget to extreme positions. So for example, if we enter top-right, we need to add extra padding to keep it neat and tidy. A Positioned widget combines these two things and lets us keep one Positioned widget instead of an Align and a Padding. We will see how in a while.",
    price: 75.00,
  ),
  PlantModel(
    path: "assets/plant_2.png",
    category: "Montsera",
    title: "Montsera Lily Oriental",
    description:
        "An Align widget usually takes widget to extreme positions. So for example, if we enter top-right, we need to add extra padding to keep it neat and tidy. A Positioned widget combines these two things and lets us keep one Positioned widget instead of an Align and a Padding. We will see how in a while.",
    price: 55.00,
  ),
];

List<PlantModel> populars = [
  PlantModel(
    path: "assets/plant_6.png",
    category: "Montsera",
    title: "Montsera Lily",
    description:
        "An Align widget usually takes widget to extreme positions. So for example, if we enter top-right, we need to add extra padding to keep it neat and tidy. A Positioned widget combines these two things and lets us keep one Positioned widget instead of an Align and a Padding. We will see how in a while.",
    price: 55.00,
  ),
  PlantModel(
    path: "assets/plant_8.png",
    category: "Outdoor",
    title: "Bonzai Dragor",
    description:
        "An Align widget usually takes widget to extreme positions. So for example, if we enter top-right, we need to add extra padding to keep it neat and tidy. A Positioned widget combines these two things and lets us keep one Positioned widget instead of an Align and a Padding. We will see how in a while.",
    price: 75.00,
  ),
  PlantModel(
    path: "assets/plant_5.png",
    category: "Indoor",
    title: "Cactus Lily",
    description:
        "An Align widget usually takes widget to extreme positions. So for example, if we enter top-right, we need to add extra padding to keep it neat and tidy. A Positioned widget combines these two things and lets us keep one Positioned widget instead of an Align and a Padding. We will see how in a while.",
    price: 30.00,
  ),
];
