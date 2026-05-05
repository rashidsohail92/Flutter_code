import 'package:flutter/material.dart';

class row_column extends StatelessWidget {
  const row_column({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("row and column",style: TextStyle(color: Colors.white),),
      ),
     body: Column(
      children: [
        Container(height: 80,width: double.infinity,color: Colors.green,),
        Row(
          children: [
            Container(height: 80,width: 80,color: Colors.blue,),
          ],
        )
      ],

    
      
     ),
    );
  }
}