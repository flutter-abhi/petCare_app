import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List notificationsList = [
    {
      'date': 'Today',
      'messages': [
        {
          'icon': Icons.shopping_bag,
          'message': 'Your checkout is successfull, product is on the way'
        },
        {'icon': Icons.check_circle, 'message': 'Appointment request accepted'}
      ]
    },
    {
      'date': '25 September',
      'messages': [
        {
          'icon': Icons.shopping_bag,
          'message': 'Your checkout is successfull, product is on the way'
        },
        {'icon': Icons.check_circle, 'message': 'Appointment request accepted'},
        {'icon': Icons.favorite, 'message': 'Vaccinate your pet timely'}
      ]
    },
    {
      'date': '15 September',
      'messages': [
        {
          'icon': Icons.shopping_bag,
          'message': 'Your checkout is successfull, product is on the way'
        },
        {'icon': Icons.check_circle, 'message': 'Appointment request accepted'},
        {'icon': Icons.favorite, 'message': 'Vaccinate your pet timely'}
      ]
    },
    {
      'date': '21 October',
      'messages': [
        {
          'icon': Icons.shopping_bag,
          'message': 'Your checkout is successfull, product is on the way'
        },
        {'icon': Icons.check_circle, 'message': 'Appointment request accepted'}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notification",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Color.fromRGBO(245, 146, 69, 1),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: notificationsList.length,
          itemBuilder: (contex, index) {
            return ListTile(
              title: Text(
                notificationsList[index]["date"],
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              subtitle: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 8),
                          blurRadius: 16,
                          spreadRadius: -4,
                          color: Color.fromRGBO(22, 34, 51, 0.08))
                    ]),
                child: SizedBox(
                  height: (54 * notificationsList[index]["messages"].length)
                      .toDouble(),
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: notificationsList[index]["messages"].length,
                      itemBuilder: ((context, i) {
                        return Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              alignment: Alignment.center,
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromRGBO(252, 219, 193, 1)),
                              child: Icon(notificationsList[index]["messages"]
                                  [i]["icon"]),
                            ),
                            Expanded(
                              child: Text(notificationsList[index]["messages"]
                                  [i]["message"]),
                            )
                          ],
                        );
                      })),
                ),
              ),
            );
          }),
    );
  }
}
