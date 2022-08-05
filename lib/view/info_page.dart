import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Info Page")),
      body: Center(child: Lottie.asset("asset/lotties/info.json")),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, "/");
      }),
      backgroundColor: Colors.red,
    );
  }
}
