import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(backgroundColor: Colors.pink,
    title: Text(
      "My first app",
      style:TextStyle(color: Colors.amberAccent,fontSize: 33) ,),

    ),
body: Center(
  child: Container(
height: 200,
width: 200,
decoration: BoxDecoration(
  color: Colors.purple,
  borderRadius: BorderRadius.circular(24),
  border: Border.all(color: Colors.black,width: 10),
),
  ),
),
 
    );
  }
}