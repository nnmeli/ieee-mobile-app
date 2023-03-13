import 'package:flutter/material.dart';

class loading with ChangeNotifier{

  static bool isLoading = false;

  void changeLoading(){

    isLoading = !isLoading;
    notifyListeners();
  }

}