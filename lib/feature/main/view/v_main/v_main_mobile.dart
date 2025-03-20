import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:wizh_test/feature/main/view/v_home/v_home.dart';

class VMainMobile extends StatelessWidget {
  const VMainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          VHome(),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.home_2),
            activeIcon: Icon(IconsaxPlusBold.home_2),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.like),
            activeIcon: Icon(IconsaxPlusBold.like),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.ticket),
            activeIcon: Icon(IconsaxPlusBold.ticket),
            label: 'Your Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.diamonds),
            activeIcon: Icon(IconsaxPlusBold.diamonds),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.user_square),
            activeIcon: Icon(IconsaxPlusBold.user_square),
            label: 'Login',
          ),
        ],
      ),
    );
  }
}