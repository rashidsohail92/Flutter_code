import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class images extends StatelessWidget {
  const images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text(
          "My picture",style: TextStyle(color: Colors.white),
        ),
      ),
      body:Column(
        children: [
          Image.asset('assets/1.jpeg'),
          Text(
            'Rashid sohail',
            textAlign: TextAlign.center,
            style: GoogleFonts.tangerine(
              fontSize: 70,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            )
          )
        ],
      ) ,
    );
  }
}