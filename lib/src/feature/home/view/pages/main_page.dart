import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/style/colors.dart';
import '../widgets/logo_text.dart';

class MainPage extends StatefulWidget {
  final Widget child;
  const MainPage({super.key, required this.child});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    switch (index) {
      case 0:
        context.go("${AppRouteName.mainPage}${AppRouteName.homePage.substring(1)}");
        break;
      case 1:
        context.go("${AppRouteName.mainPage}${AppRouteName.searchPage.substring(1)}");
        break;
      case 2:
        context.go("${AppRouteName.mainPage}${AppRouteName.libraryPage.substring(1)}");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: AppImages.mainLogoIcon,
              ),
              const SizedBox(
                width: 5,
              ),
              const LogoText(),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  context.go("${AppRouteName.mainPage}${AppRouteName.settingPage.substring(1)}");
                },
                child: AppImages.settingIcon,
              ),
            ],
          ),
        ),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
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
