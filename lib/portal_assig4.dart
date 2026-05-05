import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Assig4 extends StatefulWidget {
  const Assig4({super.key});

  @override
  State<Assig4> createState() => _Assig4State();
}

class _Assig4State extends State<Assig4> {
  List<Map<String, dynamic>> Textcolors = [
    {'colors1': Colors.white},
    {'colors1': Colors.white},
    {'colors1': Colors.white},
    {'colors1': Colors.white},
    {'colors1': Colors.white},
    {'colors1': Colors.white},
    
  ];
  List<Map<String, dynamic>> colors = [
    {'colors': Colors.grey},
    {'colors': Colors.yellow},
    {'colors': Colors.brown},
    {'colors': const Color.fromARGB(255, 246, 65, 52)},
    {'colors': Colors.black87},
    {'colors': Colors.white70},
    
  ];

  List<Map<String, dynamic>> Watcheslist = [
    {'Image': 'assets/Casio.png', 'title': 'Casio'},
    {'Image': 'assets/bidden.png', 'title': 'Bidden'},
    {'Image': 'assets/quartz.png', 'title': 'Quartz'},
    {'Image': 'assets/Richard mille.png', 'title': 'Richard mille'},
    {'Image': 'assets/Lacoste.jpg', 'title': 'Lacoste'},
    {'Image': 'assets/Apple watch.png', 'title': 'Apple watch'},
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey, // Match background to container
      appBar: AppBar(
        centerTitle: true,
        title: Text(

          'Watches Collection',
          style: GoogleFonts.pacifico(fontSize: 24, color: Colors.white),
    
        ),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: Watcheslist.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: colors[index]['colors'],
                borderRadius: BorderRadius.circular(20),

                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 20, 18, 18),
                    offset: Offset(4, 4),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      Watcheslist[index]['Image'].toString(),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    Watcheslist[index]['title'],
                    style: TextStyle(
                      color: Textcolors[index]['colors1'],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 20, 18, 18),
                          offset: Offset(4, 4),
                          blurRadius: 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}