import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({super.key, 
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavItem(Icons.home, 'Home', 0),
          buildNavItem(Icons.favorite, 'Service', 1),
          buildNavItem(Icons.shopping_cart, 'Cart', 2, isMiddle: true),
          buildNavItem(Icons.history, 'History', 3),
          buildNavItem(Icons.person, 'Profile', 4),
        ],
      ),
    );
  }

  Widget buildNavItem(IconData icon, String label, int index,
      {bool isMiddle = false}) {
    final isSelected = selectedIndex == index;
    final color = isSelected ? Colors.orange : Colors.grey;

    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isMiddle)
            Container(
              height: 66,
              width: 66,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icon,
                    size: 25,
                    color: Colors.white,
                  ),
                  const Text(
                    "Shop",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            )
          else
            Icon(
              icon,
              color: color,
            ),
          if (!isMiddle)
            Text(
              label,
              style: TextStyle(color: color),
            ),
        ],
      ),
    );
  }
}
