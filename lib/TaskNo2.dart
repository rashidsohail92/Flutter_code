import 'package:flutter/material.dart';

class TaskNo2 extends StatelessWidget {
  const TaskNo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(height: 300,width: double.infinity,color: Colors.purple,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Container(height:200,width: 245,color: Colors.green,),
  Column
  (mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(height:60 ,width: 200,color: Colors.blueAccent,),
      Container(height: 150,width: 200,color: Colors.red,)
    ],

  )
],

),
GestureDetector

(onTap: () {
  Navigator.pop(context);
  
},
  child: Container(height: 200,width: double.infinity,color: Colors.green,))
        ],
        
      ),

    );
  }
}