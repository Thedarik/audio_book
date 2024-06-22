import 'package:audio_book/src/core/style/images.dart';
import 'package:flutter/material.dart';
import '../../../../core/style/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: AppImages.inActiveHomeIcon,
            activeIcon: AppImages.activeHomeIcon,
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: AppImages.inActiveSearchIcon,
            activeIcon: AppImages.activeSearchIcon,
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: AppImages.inActiveLibraryIcon,
            activeIcon: AppImages.activeLibraryIcon,
            label: "Library",
          ),
        ],
        type: BottomNavigationBarType.fixed, 
        showSelectedLabels: true,
        backgroundColor: AppColors.white,
        showUnselectedLabels: true, 
        selectedLabelStyle: const TextStyle(color: AppColors.c4838D1,),
        unselectedLabelStyle: const TextStyle(color: AppColors.c6A6A8B),
      ),

    );
  }
}
