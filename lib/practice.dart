import 'package:flutter/material.dart';

class Dailypractice extends StatelessWidget {
  const Dailypractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor:Color.fromARGB(255, 9, 75, 190),
  title: Text(
    'Container widget',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
     ),
  centerTitle: true,
),
body: Column(
  children: [
    Center(
      child: Container(
        height: 200,
        width: 200,
        color: Colors.blueAccent,
      ),
    )
  ],
),
    );
  }
}