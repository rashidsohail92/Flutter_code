import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listviewwidget extends StatelessWidget {
  const Listviewwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text('Whatsapp',style: GoogleFonts.aBeeZee(fontSize: 24,color: Colors.black),),
      ),
    );
  }
}