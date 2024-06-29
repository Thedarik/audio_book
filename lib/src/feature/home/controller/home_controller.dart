import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routes/app_route_name.dart';

class HomeController extends ChangeNotifier {
  HomeController._internal();
  static final HomeController _instance = HomeController._internal();
  factory HomeController() {
    return _instance;
  }


  int selectedIndex = 0;
  double rating = 0.0;

  void onTap(double value){
    rating = value.ceilToDouble();
    notifyListeners();
    log(rating.toString());
  }


  void onItemTapped(int index, BuildContext context) {
    selectedIndex = index;
    notifyListeners();

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
}

