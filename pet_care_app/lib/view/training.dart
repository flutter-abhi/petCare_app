import 'package:flutter/material.dart';

class TrainingDis extends StatefulWidget {
  const TrainingDis({super.key});

  @override
  State<TrainingDis> createState() => _TrainingDisState();
}

class _TrainingDisState extends State<TrainingDis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
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
                        color: const Color.fromRGBO(245, 146, 69, 1)),
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                const Text(
                  "Training",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 80,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: training.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(top: 8, bottom: 8),
                      height: 122,
                      width: MediaQuery.of(context).size.width,
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
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    training[index]["img"],
                                    width: 90,
                                    height: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const Positioned(
                                    top: 30,
                                    left: 30,
                                    child: Icon(
                                      Icons.play_circle_outline_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 180,
                                  child: Text(
                                    training[index]["title"],
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Text(
                                  training[index]["aut"],
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
                                      training[index]["rating"],
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  List training = [
    {
      "img": "assets/training/tr1.jpeg",
      "title": "Obedience Courses",
      "aut": "By Jhon Smith",
      "rating": "4.9 (330)"
    },
    {
      "img": "assets/training/tr2.jpeg",
      "title": "Specialty Classes &Workshops",
      "aut": "By Duke Fuzzington",
      "rating": "5.0 (530)"
    },
    {
      "img": "assets/training/tr3.jpeg",
      "title": "Puppy Kindergantenand Playgroups",
      "aut": "By Sir Fluffington",
      "rating": "4,0 (380)"
    },
    {
      "img": "assets/training/tr4.jpeg",
      "title": "Canine Good Citizen Test",
      "aut": "By Baron Fuzzypaws",
      "rating": "4.8 (600)"
    },
    {
      "img": "assets/training/tr5.jpeg",
      "title": "Theraphy Dogs",
      "aut": "By Duke Fuzzington",
      "rating": "4.9 (330)"
    },
    {
      "img": "assets/training/tr6.jpeg",
      "title": "Obedience Courses",
      "aut": "By Jhon Smith",
      "rating": "4.9 (330)"
    },
  ];
}
