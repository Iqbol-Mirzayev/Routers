import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Setting Page")),
      body: Column(
        children: [
          Lottie.asset("asset/lotties/all_best.json"),
          Lottie.asset("asset/lotties/think.json"),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, "/info");
      }),
      backgroundColor: Colors.grey,
    );
  }
}
