import 'package:flutter/material.dart';
import 'AppColors.dart' as AppColor;
import 'mainPage.dart';

class MyStartPage extends StatefulWidget {
  const MyStartPage({super.key});

  @override
  State<MyStartPage> createState() => _MyStartPageState();
}

class _MyStartPageState extends State<MyStartPage> {

  List<String> text = [
    "We help you grow and care for your urban jungle with ease",
    "Plants are also amazingly adaptable, finding ways to grow even in impossible environments",
    "Plants manufacture their own food from sunlight, absorb nutrients from the ground"
  ];

  String firstText = "We help you grow and care for your urban jungle with ease";
  bool c1=true,c2=false,c3=false;
  int count=0;

  @override
  Widget build(BuildContext context) {
    bool checkAppBar = false;
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                /* start Text */
                padding: EdgeInsets.only(top:120 ,),
                child: Text(
                  "plantify",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 40,
                    color: AppColor.startTextColor,
                  ),
                ),
              ),
              Container(
                /* circular image */
                width: double.infinity,
                height:300,
                margin: const EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("image/startbg.jpg"),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right:20 , top: 10,),
                child: Text(
                  "${firstText}",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.startParagraphColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 30,),
              Container(
                padding: const EdgeInsets.only(bottom: 20,),
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      count++;
                    });
                    if(count == 1){
                      c1=false;
                      c2=true;
                      firstText = text[count];
                    }
                    else if(count == 2){
                      c2=false;
                      c3=true;
                      firstText = text[count];
                    }
                    else
                    {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>MainPage()));
                    }
                  },
                  child: Text(
                    "Start planting",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColor.startBtnText,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColor.startBtnBG),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric( horizontal: 50,vertical: 15)),
                    elevation: MaterialStateProperty.all(10),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),)),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.circle , size: 15,color: c1==true?AppColor.startactiveCircle:AppColor.startInactiveCircle,),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.circle ,size: 15,color: c2==true?AppColor.startactiveCircle:AppColor.startInactiveCircle,),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.circle, size: 15,color: c3==true?AppColor.startactiveCircle:AppColor.startInactiveCircle,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




