import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:palventure/utils/constants/colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;
  final bool darkMode;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
    required this.darkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40, // Custom height
      decoration: BoxDecoration(
        color: darkMode ? AppColors.black : Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, -2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(icon: Iconsax.home, index: 0),
          _buildNavItem(icon: Iconsax.global, index: 1),
          _buildNavItem(icon: Iconsax.notification, index: 2),
          _buildNavItem(icon: Iconsax.user, index: 3),
        ],
      ),
    );
  }

  Widget _buildNavItem({required IconData icon, required int index}) {
    final isSelected = index == selectedIndex;
    return GestureDetector(
      onTap: () => onTap(index),
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        height: 50,
        width: 60,
        child: Icon(
          icon,
          size: 20,
          color: isSelected
              ? (darkMode ? Colors.white : Colors.black)
              : (darkMode ? Colors.white54 : Colors.black54),
        ),
      ),
    );
  }
}
