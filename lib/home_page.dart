import 'package:carousel_slider/carousel_slider.dart';
import 'package:figma1/category_model.dart';
import 'package:figma1/choosen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = [
    'assets/banners/Slider 1.png',
    'assets/banners/Slider 2.png',
    'assets/banners/Slider 3.png',
  ];
  List<CategoryModel> category = [
    CategoryModel(name: 'fruits', image: 'assets/category/fruits.png'),
    CategoryModel(name: 'egg', image: 'assets/category/egg.png'),
    CategoryModel(name: 'vegetables', image: 'assets/category/vegatbels.png'),
    CategoryModel(name: 'bevergas', image: 'assets/category/bavergas.png'),
    CategoryModel(name: 'luandry', image: 'assets/category/luandry.png'),
  ];
  List<ProductModel> productes = [
    ProductModel(
      name: 'Banana',
      image: 'assets/fruits/banana.png',
      price: 50,
      rate: 4.3,
      ratecount: 30,
    ),
    ProductModel(
      name: 'Orange',
      image: 'assets/fruits/orange.png',
      price: 30,
      rate: 4.4,
      ratecount: 40,
    ),
    ProductModel(
      name: 'Papper',
      image: 'assets/fruits/papper.png',
      price: 70,
      rate: 4.5,
      ratecount: 20,
    ),
  ];
 
 
  void basket(ProductModel product) {
    setState(() {
      if (basketlist.contains(product)) {
        basketlist.remove(product);
      } else {
        basketlist.add(product);
      }
    });
  }

  List<ProductModel> basketlist = [];
  bool Selected(ProductModel product) => basketlist.contains(product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        leadingWidth: 0,
        title: Row(
          children: [
            SvgPicture.asset("assets/icons/motor.svg"),
            SizedBox(width: 10),
            Text("61 Hopper Street.."),
            SizedBox(width: 10),
            Icon(Icons.keyboard_arrow_down, size: 30),
            Spacer(flex: 1),
            SvgPicture.asset("assets/icons/basket.svg"),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider.builder(
            itemCount: items.length,
            itemBuilder: (BuildContext context, int Index, int pageViewIndex) =>
                Image.asset(items[Index]),
            options: CarouselOptions(
              height: 222,
              aspectRatio: 1,
              viewportFraction: .6,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(seconds: 3),
              autoPlayCurve: Curves.linear,
              enlargeCenterPage: true,
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(category.length, (index) {
                return Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Image.asset(category[index].image),
                        ),
                        Text(
                          category[index].name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                );
              }),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fruits",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(productes.length, (index) {
                return Container(
                  width: 190,

                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: .5,
                                          color: Colors.white,
                                        ),
                                        color: Colors.grey.shade100,
                                      ),

                                      width: 150,
                                      height: 130,
                                      child: Image.asset(
                                        productes[index].image,
                                      ),
                                    ),
                                    Positioned(
                                      right: 5,
                                      bottom: 4,
                                      child: GestureDetector(
                                        onTap: () {
                                          basket(productes[index]);
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              50,
                                            ),
                                          ),

                                          child: Selected(productes[index])
                                              ? Icon(
                                                  Icons.close,
                                                  color: Colors.black,
                                                )
                                              : Icon(
                                                  Icons.add,
                                                  color: Colors.black,
                                                ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Text(
                                  productes[index].name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons/star.png",
                                      width: 15,
                                      height: 15,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "${productes[index].rate}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "  (${productes[index].ratecount})",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '\$ ${productes[index].price}',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: basketlist.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(basketlist[index].image),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: Colors.white,
                      endIndent: 6,
                      indent: 6,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'View Basket',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    SvgPicture.asset(
                      'assets/icons/basket.svg',
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
