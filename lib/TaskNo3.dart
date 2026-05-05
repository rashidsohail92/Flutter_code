import 'package:flutter/material.dart';

class newTask extends StatelessWidget {
  const newTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        centerTitle: true,
        title: Text('Flutter layout demo' ,style:TextStyle(color: Colors.black) ,),
      ),
      body: Column(
        children: [
          Image.asset('assests/new.image.jpg'),
        ],
      ),
    );
  }
}