import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:audio_book/src/feature/home/model/home_book_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/routes/app_route_name.dart';
import '../../../data/repository/app_repository.dart';
import 'package:http/http.dart' as http;

class HomeController extends ChangeNotifier {
  final AppRepository appRepository;
  HomeController(this.appRepository);
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  HomeBooksModel? homeBooksModel;
  File? file;

  Future<void> fetchPDF() async {
    log("Fetching PDF...");
    _isLoading = true;
    notifyListeners();

    try {
      final response = await appRepository.fetchPDF();
      final directory = await getApplicationDocumentsDirectory();
      file = File("${directory.path}/downloaded_file.pdf");
      await file!.writeAsBytes(response.bodyBytes);
      log("PDF saved at: ${file!.path}");
    } catch (e) {
      log("Error fetching PDF: $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getHomeBooks()async{
    _isLoading = true;
    notifyListeners();

    homeBooksModel = (await appRepository.getHomeBooks())!;

    _isLoading = false;
    notifyListeners();
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

