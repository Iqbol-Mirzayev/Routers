import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body:  Center(child: Lottie.asset("asset/lotties/home.json")),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, "/settings");
      }),
      backgroundColor: Colors.amberAccent,
    );
  }
}
