import 'package:flutter/material.dart';

class Expandwidget extends StatefulWidget {
  const Expandwidget({super.key});

  @override
  State<Expandwidget> createState() => _ExpandwidgetState();
}

class _ExpandwidgetState extends State<Expandwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
backgroundColor: Colors.green,
centerTitle: true,
        title: Text("Expanded and flexible",style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          Text("Task No 1",style: TextStyle(fontSize: 20), ),
          Row(
            children: [
              Expanded(child: Text("The sun was slowly setting behind the hills, painting the sky in shades of orange and pink. A gentle breeze moved through the trees, making the leaves whisper softly. People walked calmly along the path, enjoying the peaceful evening atmosphere. Birds returned to their nests as the day came to an end. Everything felt quiet, calm, and perfectly at ease.")),
            Icon(Icons.access_alarm_rounded),
            ],
            
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Text("Task No 2", style: TextStyle(fontSize: 20),),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepOrangeAccent,),
              ),
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                )
            ],
          )
        ],
        
      ),
    );
  }
}