import 'package:flutter/material.dart';
import 'package:flutter_app_write_trial_task/models/item.dart';
import '../services/appwrite_service.dart';

class DataProvider with ChangeNotifier {
  final AppwriteService appwriteService =
      AppwriteService(); // initialize appwrite service
  List<Item> items = []; // List of Item object
  bool isLoading = false; // indicator to detect loading state

  Future<void> loadData() async {
    isLoading = true;
    notifyListeners(); // let any listener for provider to catch the value when change
    items = await appwriteService
        .fetchItems(); // trigger fetchItems from service layer
    isLoading = false; // turn off loading
    notifyListeners();
  }
}
