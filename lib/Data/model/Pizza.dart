class Pizza {
  final String name;
  final String type;
  final double duration;
  final String description;
  final String imagUrl;

  Pizza(
      {required this.name,
      required this.type,
      required this.duration,
      required this.description,
      required this.imagUrl});
}

List<Pizza> pizzaz = [
  Pizza(
      name: "Pizza medium with shrimp sauce",
      type: "pasta  ",
      duration: 30,
      description:
          "Dolor Anim tempor ex qui laborum deserunt tempor voluptate tempor.",
      imagUrl: "pexels-rene-strgar-13814644.jpg"),
  Pizza(
      name: "Pizza Noodles  with French cheese",
      type: "pasta  ",
      duration: 30,
      description:
          "Dolor Anim tempor ex qui laborum deserunt tempor voluptate tempor.",
      imagUrl: "pexels-kristina-paukshtite-1146760.jpg"),
  Pizza(
      name: "Janhu Noodles  with melted cheese",
      type: "parraty",
      duration: 30,
      description:
          "Dolor Anim tempor ex qui laborum deserunt tempor voluptate tempor.",
      imagUrl: "No-Yeast Pizza Dough _ Recipe Tin Eats.png"),
  Pizza(
      name: "Italiano Noodles  with melted cheese",
      type: "parraty",
      duration: 30,
      description:
          "Dolor Anim tempor ex qui laborum deserunt tempor voluptate tempor.",
      imagUrl: "pexels-narda-yescas-1566837.jpg"),
];
