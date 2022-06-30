import 'package:flutter/material.dart';

class Coaches extends StatelessWidget {
  const Coaches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.black,
      ),
      body: const Center(child: Text('There are no data in coaching staff'),),
    );
  }
}
