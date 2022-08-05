import 'package:flutter/material.dart';
import 'package:work_with_api/router/router.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.router.ongenerateRoute,
    );
  }
}
