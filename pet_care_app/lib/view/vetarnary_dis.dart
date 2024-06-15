import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_care_app/view/detail_Doctor.dart';
import 'package:pet_care_app/widgets/textfild.dart';

List drs = [
  {
    "name": "Dr. Anna Johanson",
    "spe": "Veterinary Behavioral",
    "rating": "4.8",
    "dis": "1.0",
    "img": "assets/vetarnary/dr1.jpeg",
    "about":
        "Dr. Maria Naiis is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
    "exp": "11 Years",
    "price": "250"
  },
  {
    "name": "Dr. Vernon Chwe",
    "spe": "Veterinary Surgery",
    "rating": "4.9",
    "dis": "1.5",
    "img": "assets/vetarnary/dr2.jpeg",
    "about":
        "Dr. Vernon Chwe is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
    "exp": "10 Years",
    "price": "750"
  },
  {
    "name": "Dr. Maria Nai",
    "spe": "Veterinary Behavioral",
    "rating": "4.9",
    "dis": "1.5",
    "img": "assets/vetarnary/dr3.jpeg",
    "about":
        "Dr. Maria Nai is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
    "exp": "5 Years",
    "price": "150"
  },
  {
    "name": "Dr. Vernon Chwe",
    "spe": "Veterinary Surgery",
    "rating": "4.9",
    "dis": "1.5",
    "img": "assets/vetarnary/dr2.jpeg",
    "about":
        "Dr. Maria Nai is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
    "exp": "5 Years",
    "price": "150"
  },
  {
    "name": "Dr. Maria Nai",
    "spe": "Veterinary Behavioral",
    "rating": "4.9",
    "dis": "1.5",
    "img": "assets/vetarnary/dr3.jpeg",
    "about":
        "Dr. Maria Nai is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro...",
    "exp": "5 Years",
    "price": "150"
  }
];

class DrsModel {
  String name;
  String spe;
  String rating;
  String distance;
  String img;
  String about;
  String exp;
  String price;
  DrsModel(
      {required this.about,
      required this.distance,
      required this.exp,
      required this.img,
      required this.name,
      required this.price,
      required this.rating,
      required this.spe});
}

class VetarnaryDis extends StatefulWidget {
  const VetarnaryDis({super.key});

  @override
  State<VetarnaryDis> createState() => _VetarnaryDisState();
}

class _VetarnaryDisState extends State<VetarnaryDis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.orange,
                  ),
                  Text(
                    "London, UK",
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
                            "Lets Find Specialist",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          Text(
                            " Doctor for Your Pet!",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                      const Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/vetarnary/vet1.jpeg",
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
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/vetarnary/vet2.jpeg",
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Vaccinations",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.orange),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/vetarnary/vet3.jpeg",
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Operations",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.orange),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/vetarnary/vet4.jpeg",
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Behaviorals",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.orange),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/vetarnary/vet5.jpeg",
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Dentistry",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.orange),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Best Specialists Nearby",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: drs.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          DrsModel obj = DrsModel(
                              about: drs[index]["about"],
                              name: drs[index]["name"],
                              exp: drs[index]["exp"],
                              distance: drs[index]["dis"],
                              img: drs[index]["img"],
                              price: drs[index]["price"],
                              rating: drs[index]["rating"],
                              spe: drs[index]["spe"]);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return DetailDoctor(
                                drsModelObj: obj,
                              );
                            }),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0, top: 8),
                          child: Container(
                            height: 122,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
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
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      drs[index]["img"],
                                      width: 90,
                                      height: 90,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        drs[index]["name"],
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        drs[index]["spe"],
                                        style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey),
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star_border,
                                            color: Colors.orange,
                                            size: 18,
                                          ),
                                          Text(
                                            drs[index]["rating"],
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          const Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.orange,
                                            size: 18,
                                          ),
                                          Text(
                                            drs[index]["dis"],
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
