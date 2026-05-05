import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class listwidget extends StatefulWidget {
  const listwidget({super.key});

  @override
  State<listwidget> createState() => _listwidgetState();
}

class _listwidgetState extends State<listwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white, // Match background to container
      appBar: AppBar(
        centerTitle: true,
        title: Text(

          'list View',
          style: GoogleFonts.pacifico(fontSize: 24, color: Colors.white),
    
        ),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Items',style: TextStyle(fontSize: 25),),
            trailing: Icon(Icons.favorite_border,size: 30,),
          );
           
        },
      ),
    );
  }
}