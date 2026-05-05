import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mycounter extends StatefulWidget {
  const mycounter({super.key});

  @override
  State<mycounter> createState() => _mycounterState();
}

class _mycounterState extends State<mycounter> {
int counter = 0;
void increment(){
counter++;

}
void decrement(){
  if (counter>0){
      counter--;
  }

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text("my counter app",
        style:GoogleFonts.pacifico(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 25),),
      ),
      body: Center(
        
        child: Column(
          
          children: [Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
               shape: BoxShape.circle,
              ),
              child: Center(child: Text(counter.toString(),style:GoogleFonts.pacifico(fontSize:50))),
            ),
         ),
         SizedBox(
          height: 80,

         ),
         Row
         (mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          GestureDetector(
            onTap: () {
              increment();
              setState(() {
                
              });
            },
            child: Container(
              height: 80,
                    width: 80,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                
                
              ),
            child:Icon(Icons.add) ,
            ),
          ),
         
          GestureDetector(
            onTap:(){
              decrement();
              setState(() {
                
              });
            } ,
            child: Container(
              height: 80,
                    width: 80,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                
                
              ),
            child:Icon(Icons.remove) ,
            ),
          )
        ],)
         ],
        
        ),
        
      ),
    );
  }
}