import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/feature/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/style/colors.dart';

class MainPage extends StatefulWidget {
  final Widget child;
  const MainPage({super.key, required this.child});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: Consumer<HomeController>(
        builder: (context, controller, child)=> BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (index){
            controller.onItemTapped(index, context);
          },
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
      ),

    );
  }
}
