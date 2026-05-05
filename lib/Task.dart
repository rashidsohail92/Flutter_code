import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor:Colors.amberAccent ,
        centerTitle: true,
        title:Text("Persnol info",style:TextStyle(color: Colors.black) ,) ,
      ),
body:Column(
  

  children: [
    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Name',style:TextStyle(color: Colors.black,fontSize: 40) ,),
        Text(
          'Rashid sohail',style: TextStyle(color:Colors.black,fontSize: 40 ),)
        
      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "class",style: TextStyle(color: Colors.black,fontSize: 40),
        ),
        Text(
          "Flutter",style: TextStyle(color:Colors.black,fontSize: 40),
        ),
      ],
    ),

 Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Year",style: TextStyle(color: Colors.black,fontSize: 40),
        ),
        Text(
          "2026",style: TextStyle(color:Colors.black,fontSize: 40),
        ),
      ],
    ),

  ],
) ,
    );
  }
}