
import 'package:flutter/material.dart';
import 'package:pet_care_app/widgets/textfild.dart';

class GroomingDis extends StatefulWidget {
  const GroomingDis({super.key});

  @override
  State<GroomingDis> createState() => _GroomingDisState();
}

class _GroomingDisState extends State<GroomingDis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(245, 146, 69, 1)),
                      child: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  const Text(
                    "Good Morning",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(245, 146, 69, 1),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(22, 34, 51, 0.08),
                          offset: Offset(0, 8),
                          blurRadius: 16,
                          spreadRadius: -4)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "60% OFF",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            " On hair & spa treatment",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                      const Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/grooming/gr1.jpeg",
                          width: 71,
                          height: 67,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              //search text fild

              //
              const SizedBox(
                height: 15,
              ),
              myTextFild(
                hintText: "Search",
                sufixIcon: const Icon(Icons.search_sharp),
              ),

              ///
              ///our services
              const Row(
                children: [
                  Text(
                    "Our Services",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 500,
                child: GridView.builder(
                    // padding: EdgeInsets.only(left: 100),

                    shrinkWrap: true,
                    itemCount: services.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 170,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(12, 34, 51, 0.08),
                                  offset: Offset(0, 8),
                                  blurRadius: 16,
                                  spreadRadius: -4)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                services[index]["img"],
                                height: 101,
                                width: 122,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(
                              services[index]["ser"],
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  List services = [
    {"img": "assets/grooming/gr2.jpeg", "ser": "Bathing & Drying"},
    {"img": "assets/grooming/gr3.png", "ser": "Hair Triming "},
    {"img": "assets/grooming/gr4.jpeg", "ser": "Nail Triming"},
    {"img": "assets/grooming/gr5.jpeg", "ser": "Ear Cleaning"},
    {"img": "assets/grooming/gr6.png", "ser": "Teeth cleaning"},
    {"img": "assets/grooming/gr7.jpeg", "ser": "Bathing & Drying"}
  ];
}
