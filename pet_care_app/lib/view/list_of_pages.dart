import 'package:flutter/material.dart';
import 'package:pet_care_app/view/dashbord_dis.dart';
import 'package:pet_care_app/view/history_page.dart';
import 'package:pet_care_app/view/profile_page.dart';
import 'package:pet_care_app/view/shop_dis.dart';
import 'package:pet_care_app/view/vetarnary_dis.dart';

import '../widgets/bottom_navigation.dart';

int selectedIndex = 0;

class ListOfPages extends StatefulWidget {
  const ListOfPages({super.key});

  @override
  State<ListOfPages> createState() => _ListOfPagesState();
}

class _ListOfPagesState extends State<ListOfPages> {
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    DashBordDis(),
    VetarnaryDis(),
    Shop(),
    HistoryPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
