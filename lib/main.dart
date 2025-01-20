import 'package:flutter/material.dart';
import 'package:flutter_app_write_trial_task/app.dart';
import 'package:provider/provider.dart';
import 'providers/data_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => DataProvider(),
      child: const MyApp(),
    ),
  );
}
