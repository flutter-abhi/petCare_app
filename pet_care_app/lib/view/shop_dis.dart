import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_care_app/widgets/textfild.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 180,
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32)),
                      color: Color.fromRGBO(245, 146, 69, 1)),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hellow Abhii",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            Text(
                              "Find your lovable Pets",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 130,
                    left: 40,
                    child: SizedBox(
                      width: 280,
                      child: myTextFild(
                          hintText: "search Something Here",
                          sufixIcon: const Icon(Icons.search)),
                    )),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
              height: MediaQuery.of(context).size.height - 220,
              child: GridView.builder(
                  // shrinkWrap: true,
                  itemCount: categories.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 19,
                      mainAxisSpacing: 18),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromRGBO(245, 146, 69, 1),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              categories[index]["image"],
                              height: double.infinity,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 20,
                            child: Container(
                              alignment: Alignment.center,
                              height: 29,
                              width: 100,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      bottomRight: Radius.circular(50))),
                              child: Text(
                                categories[index]["label"],
                                style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(245, 146, 69, 1)),
                              ),
                            )),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  List categories = [
    {
      'label': 'Pets',
      'image': 'assets/shop/sh1.jpeg',
    },
    {
      'label': 'Foods',
      'image': 'assets/shop/sh2.jpeg',
    },
    {
      'label': 'Healthy',
      'image': 'assets/shop/sh3.jpeg',
    },
    {
      'label': 'Toys',
      'image': 'assets/shop/sh4.jpeg',
    },
    {
      'label': 'Accessories',
      'image': 'assets/shop/sh5.jpeg',
    },
    {
      'label': 'Clothes',
      'image': 'assets/shop/sh6.jpeg',
    },
    {
      'label': 'Accessories',
      'image': 'assets/shop/sh5.jpeg',
    },
  ];
}
