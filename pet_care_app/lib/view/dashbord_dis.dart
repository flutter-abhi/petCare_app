import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pet_care_app/view/grooming.dart';
import 'package:pet_care_app/view/training.dart';
import 'package:pet_care_app/view/vetarnary_dis.dart';
import 'package:pet_care_app/widgets/textfild.dart';

class DashBordDis extends StatefulWidget {
  const DashBordDis({super.key});

  @override
  State<DashBordDis> createState() => _DashBordDisState();
}

class _DashBordDisState extends State<DashBordDis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/dashbord/profile.jpeg",
                      height: 56,
                      width: 56,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hellow , Abhii",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Good Morning",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(194, 195, 204, 1)),
                      )
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.notifications_outlined,
                    size: 25,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              myTextFild(
                hintText: "Search",
                sufixIcon: const Icon(Icons.search_sharp),
              ),
              ////////in love ptes
              ///
              ///
              Container(
                height: 100,
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
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "In Love With Pets?",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Get all what you need for them",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(245, 146, 69, 1)),
                          )
                        ],
                      ),
                      const Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/dashbord/inlove.jpeg",
                          width: 71,
                          height: 67,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              /////////////////////////////
              ///
              ///CATEGORY

              const Row(
                children: [
                  Text(
                    "Category",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 125, 124, 124),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const VetarnaryDis();
                      }));
                    },
                    child: Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            "assets/dashbord/category1.png",
                            height: 55,
                            width: 55,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Veterinary",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const GroomingDis();
                              },
                            ),
                          );
                        },
                        child: ClipOval(
                          child: Image.asset(
                            "assets/dashbord/category2.png",
                            height: 55,
                            width: 55,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Grooming",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "assets/dashbord/category3.png",
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Pet Store",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return  TrainingDis();
                          },
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            "assets/dashbord/category4.png",
                            height: 55,
                            width: 55,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Training",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //event
              ///
              ///
              ///
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text("Event",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 126,
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Find and Join in Special ",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            " Events For Your Pets!",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            width: 90,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              "See More",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/dashbord/eventSee.png",
                          width: 95,
                          height: 95,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              ///community
              ///
              //
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text("Community",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 126,
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Connect and share with",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            " communities!",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            width: 90,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(245, 146, 69, 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              "See More",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/dashbord/community.png",
                          width: 95,
                          height: 95,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
