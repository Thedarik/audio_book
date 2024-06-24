import 'package:audio_book/src/core/routes/app_route_name.dart';
import 'package:audio_book/src/core/style/images.dart';
import 'package:audio_book/src/feature/home/view/pages/book_detail_page.dart';
import 'package:audio_book/src/feature/home/view/pages/home_detail_page.dart';
import 'package:audio_book/src/feature/home/view/pages/home_page.dart';
import 'package:audio_book/src/feature/library/view/pages/audio_page.dart';
import 'package:audio_book/src/feature/library/view/pages/library_page.dart';
import 'package:audio_book/src/feature/library/view/pages/profile_page.dart';
import 'package:audio_book/src/feature/library/view/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/style/colors.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          page = value;
        },
        children: [
          HomePage(),
          HomeDetailPage(),
          BookDetailPage(),
          LibraryPage(),
          SettingPage(),
          ProfilePage(),
          AudioPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int){
          page = int;
          if(int == 1){
            context.go(AppRouteName.searchPage);
          }
          else if(int == 2){
            context.go(AppRouteName.libraryPage);
          }
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

    );
  }
}
