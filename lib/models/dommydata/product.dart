class DummyProduct {
  final String id;
  final String image;
  final String title;
  final String subTitle;
  final String description;
  final double price;
  final double rating;
  // final List<String> imagePath;
  // var imagePath;

  const DummyProduct({
    required this.id,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.price,
    this.rating = 0.0,
    // required this.imagePath
  });

  static List<DummyProduct> sampleProduct = const [
    DummyProduct(
        id: "1",
        image: "assets/images/shoe1.png",
        title: "Nike Air Jordan",
        subTitle: "1 Mid 2022",
        description: "NIKE",
        price: 4500.0,
        rating: 3.5
        // imagePath: imagePath
        ),
    DummyProduct(
        id: "2",
        image: "assets/images/shoe2.png",
        title: "Nike Air Jordan",
        subTitle: "1 Mid 2021",
        description: "NIKE",
        price: 3500.0,
        rating: 4.5
        // imagePath: imagePath
        ),
    DummyProduct(
        id: "3",
        image: "assets/images/shoe3.png",
        title: "Nike Air Jordan",
        subTitle: "1 New 2022",
        description: "NIKE",
        price: 2500.0,
        rating: 3.5
        // imagePath: imagePath
        ),
    DummyProduct(
        id: "4",
        image: "assets/images/shoe4.png",
        title: "Nike Balon Jordan",
        subTitle: "1 Mid 2020",
        description: "NIKE",
        price: 3000.0,
        rating: 3.7
        // imagePath: imagePath
        )
  ];
}
