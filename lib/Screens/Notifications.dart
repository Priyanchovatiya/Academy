import 'package:flutter/material.dart';
class Noti extends StatelessWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.black,
      ),
      body: const Center(child: Text(' No Notifications'),),
    );
  }
}
