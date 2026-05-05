import 'package:flutter/material.dart';

class Rowcolumnpractice extends StatelessWidget {
  const Rowcolumnpractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Colors.purple ,
        title:Text("Row & coloumn",style: TextStyle(color: Colors.black),) ,
      ),
    );
  }
}