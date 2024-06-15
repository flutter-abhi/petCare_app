// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pet_care_app/view/vetarnary_dis.dart';

class DetailDoctor extends StatefulWidget {
  final DrsModel drsModelObj;
  const DetailDoctor({
    super.key,
    required this.drsModelObj,
  });

  @override
  State<DetailDoctor> createState() => _DetailDoctorState();
}

class _DetailDoctorState extends State<DetailDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Color.fromRGBO(245, 146, 69, 1),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Text(
                        widget.drsModelObj.spe,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        widget.drsModelObj.img,
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 520,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.drsModelObj.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 24),
                    ),
                    Text(
                      widget.drsModelObj.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 98,
                          height: 62,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(22, 34, 51, 0.08),
                                    offset: Offset(0, 11),
                                    blurRadius: 25,
                                    spreadRadius: -4)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Experience",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                widget.drsModelObj.exp,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color.fromRGBO(245, 146, 69, 1)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 98,
                          height: 62,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(22, 34, 51, 0.08),
                                    offset: Offset(0, 11),
                                    blurRadius: 25,
                                    spreadRadius: -4)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Price",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                widget.drsModelObj.price,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color.fromRGBO(245, 146, 69, 1)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 98,
                          height: 62,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(22, 34, 51, 0.08),
                                    offset: Offset(0, 11),
                                    blurRadius: 25,
                                    spreadRadius: -4)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Location",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                widget.drsModelObj.distance,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color.fromRGBO(245, 146, 69, 1)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      widget.drsModelObj.about,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Available Days",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.calendar_month_outlined,
                          size: 18,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                        Text(
                          "  july 2024",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
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
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(245, 146, 69, 1))),
                          child: const Text(
                            "Fri, 6",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(245, 146, 69, 1))),
                          child: const Text(
                            "Sat, 7",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 36,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Text(
                            "Sun, 8",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(245, 146, 69, 1))),
                          child: const Text(
                            "Mon, 9",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 36,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Text(
                            "Tue, 10",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Available Time",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 36,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 146, 69, 1),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Text(
                            "09.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(245, 146, 69, 1))),
                          child: const Text(
                            "15.00",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(245, 146, 69, 1))),
                          child: const Text(
                            "19.00",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 35,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(252, 219, 193, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "See Location",
                        style: TextStyle(
                            color: Color.fromRGBO(
                              163,
                              97,
                              46,
                              1,
                            ),
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 35,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(245, 146, 69, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Book Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
