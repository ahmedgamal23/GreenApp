import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class showImage extends StatefulWidget {
  final imageClicked;
  final country;
  const showImage({super.key , required this.imageClicked , required this.country});

  @override
  State<showImage> createState() => _showImageState(img_cl: imageClicked , country: country);
}

class _showImageState extends State<showImage> {
  var img_cl = 'image/p2.jpg';
  var country="egypt";
  _showImageState({required this.img_cl , required this.country});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Color(0xFF78706A),
            title:Center(
              child: Text(
                "Spathiphyllum",
                style: TextStyle(
                  color: Color(0xFF78706A),
                ),
              ),
            ),
          ),
          body: Container(
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 300,
                    margin: const EdgeInsets.only(top: 30 , left: 40 , right: 40 , bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage('$img_cl'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    color: Colors.white,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10,),
                          child: ElevatedButton(

                            onPressed: (){},
                            child: Text("Overview", style: TextStyle(fontSize:16,color: Colors.white , fontWeight: FontWeight.w900,),),
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all(Color(0xFFCCAD8F)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50) ,side:BorderSide(color: Colors.black12), )),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10,),
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Planting", style: TextStyle(fontSize:16,color: Colors.black38 , fontWeight: FontWeight.w900,),),
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all(Colors.white70),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50) ,side:BorderSide(color: Colors.black12), )),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10,),
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Watering", style: TextStyle(fontSize:16,color: Colors.black38 , fontWeight: FontWeight.w900,),),
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all(Colors.white70),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50) ,side:BorderSide(color: Colors.black12), )),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10,),
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Agrigation", style: TextStyle(fontSize:16,color: Colors.black38 , fontWeight: FontWeight.w900,),),
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all(Colors.white70),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50) ,side:BorderSide(color: Colors.black12), )),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10,),
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Watering", style: TextStyle(fontSize:16,color: Colors.black38 , fontWeight: FontWeight.w900,),),
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all(Colors.white70),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50) ,side:BorderSide(color: Colors.black12), )),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10,),
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Text("Agrigation", style: TextStyle(fontSize:16,color: Colors.black38 , fontWeight: FontWeight.w900,),),
                            style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all(Colors.white70),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50) ,side:BorderSide(color: Colors.black12), )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Origin",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400 , ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Text(
                            "$country",
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400 , ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Site",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400 , ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            "Indoors",
                            style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400 , ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Skill Level",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400 , ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.star , color: Colors.yellow,)),
                              IconButton(onPressed: (){}, icon: Icon(Icons.star, color: Colors.yellow,)),
                              IconButton(onPressed: (){}, icon: Icon(Icons.star)),
                              IconButton(onPressed: (){}, icon: Icon(Icons.star)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 40 , vertical: 15),),
                              backgroundColor: MaterialStateProperty.all(Color(0xFF023F02)),
                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                            ),
                            onPressed: (){},
                            child: Text("Plant in my jungle"),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.favorite_border , size: 40, color: Colors.black54,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}










