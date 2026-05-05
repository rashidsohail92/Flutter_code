import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  List<Color>myColors =[Colors.purple,Colors.greenAccent,Colors.orangeAccent,Colors.pinkAccent];
  List<Color>procolors=[
    Colors.red,
    Colors.green,
    Colors.pinkAccent,
    Colors.teal,
  ];
  List<Map<String,dynamic>>products=[
{
  'title':'white Sneakers',
  'image':'https://www.calza.com.pk/cdn/shop/products/1_ea2f51e9-425c-4382-a1b8-6792a5d22eec.jpg?v=1756727794',
},
{
  'title':'Black Watch',
'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQe84BiXZF_3b5x6EKbdxQZ4E3-cXdLPVkFIU73WJMioy7lrI9e_szRIc&s',
},
{
  'title':'Backpack',
  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZJNbSGaMx3C2LfkdkYsNz-VoSi8zl8Wfb0xgisjAbiDiGyXFt4zkhhB4&s',
},
{
  'title':'headphones',
  'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlrzIDWUK0Z625kZ0AGRuRIog3_uElf9GDTQteixu7S_cIKohWc9H5K44&s',
},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text(
    'Daraz ',
    style: GoogleFonts.pacifico(fontSize: 25,color: Colors.black),
  ),
  backgroundColor: Colors.red,
),
body: GridView.builder(
  itemCount: products.length,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.75), 
  itemBuilder: (context,index){
    return Padding(padding: const EdgeInsets.all(15.0),
    child: Container(
      decoration: BoxDecoration(
        color: myColors[index],
borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(products[index]['image']!),
          Text(
            products[index]['title']!,
            style: GoogleFonts.pacifico(
              fontSize: 24,
              color: procolors[index],
            ),
          ),
        
        ],
      ),
    ),);
  },
  ),
    );
    
  }
}