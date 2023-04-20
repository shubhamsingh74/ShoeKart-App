import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
    MyBottomNavBar({Key? key,required this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: GNav(
          color: Colors.grey.shade400,
          activeColor: Colors.grey.shade900,
          tabActiveBorder: Border.all(color: Colors.grey.shade400),
          tabBackgroundColor: Colors.white,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 20,
          gap: 10,
          onTabChange: (value)=>onTabChange!(value),
          tabs:const [
            GButton(
              icon: Icons.home,
              text: 'shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
