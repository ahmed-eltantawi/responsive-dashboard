import 'package:final_task/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyDashBoardAppApp());
}

class MyDashBoardAppApp extends StatelessWidget {
  const MyDashBoardAppApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeView());
  }
}
