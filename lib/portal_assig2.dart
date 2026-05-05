import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Addtocart extends StatelessWidget {
  const Addtocart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 105, 99, 99).withOpacity(0.4),
            boxShadow: [
BoxShadow(
  color: const Color.fromARGB(255, 169, 176, 180),
  offset: Offset(20, 20),
  blurRadius: 20,
  spreadRadius: 3,
),

            ],
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset('assets/iphone.png',height: 290,width: 290,),

              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text('Apple Iphone 16 Pro Max',style: GoogleFonts.aDLaMDisplay()),
              ),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Icon(Icons.star,color: Colors.white,),
                  Icon(Icons.star,color: Colors.white,),
                  Icon(Icons.star,color: Colors.white,),
                  Icon(Icons.star,color: Colors.white,),
                  Icon(Icons.star,color: Colors.white,),
                  Icon(Icons.comment,color: const Color.fromARGB(255, 226, 215, 215),),

                
                ],
              ),
Padding(
  padding: const EdgeInsets.only(top:100),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 60),
        child: Text('\$899.00' ,style: TextStyle(fontSize: 25),),
      ),
      Icon(Icons.shopping_cart,size: 30,),
    ],
  ),
)
            ],
          ),
        ),
      ),
    );
  }
}