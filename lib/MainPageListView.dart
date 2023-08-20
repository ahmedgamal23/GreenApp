import 'dart:convert';
import 'dart:math';
import 'AppColors.dart' as AppColor;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'showImagePage.dart';

class mainPageListView extends StatefulWidget {
  const mainPageListView({super.key});

  @override
  State<mainPageListView> createState() => _mainPageListViewState();
}

class _mainPageListViewState extends State<mainPageListView> {
  List data=[];

  Future<void> getData() async{
    final String jsonString = await rootBundle.loadString('jsonFiles/data.json');
    var d = jsonDecode(jsonString);
    setState(() {
      data = d;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // create ListView.Builder

    return Container(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          int x = Random().nextInt(16);
          return ListTile(
            title: Row(mainAxisAlignment: MainAxisAlignment.center,children:[
              Text(
                '${data[x]['name']}',
                style: TextStyle(fontSize: 20,color: AppColor.startParagraphColor),
              ),
            ],),
            subtitle: Container(
              margin: const EdgeInsets.only(bottom: 30,top: 10,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage('${data[x]['img']}'),
                  fit: BoxFit.fill,
                ) ,
            ),),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {return showImage(imageClicked: data[x]['img'] ,country:data[x]['Origin']);} ));
            },
          );
        },
      ),
    );
  }
}










