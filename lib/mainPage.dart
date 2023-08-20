import 'dart:math';

import 'package:flutter/material.dart';
import 'package:greenapp/showImagePage.dart' as showImg;
import 'package:greenapp/MainPageListView.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin{

  TabController? _tabController;
  ScrollController? _scrollController;
  int curIndex = 0 ;
  List<String> header_ = ["Indoors" , "Balcony" ,"Garden"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child:SafeArea(
        child: Scaffold(
          body: Container(
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40,),
                    child: Text(
                      "Find your plant",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
                    child: TextField(
                      cursorColor: Colors.green,
                      keyboardType:TextInputType.text,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        fillColor: Color(0xFFF6F5F1),
                        filled: true,
                        hintText: "Search plants",
                        suffixIcon: Container(
                          padding: EdgeInsets.all(20),
                          child:Icon(Icons.search,size: 25.0,) ,
                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(20,) , color: Color(0xFF067056),),
                        ),
                        suffixIconColor: Colors.white,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20) , borderSide: BorderSide.none,),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20 , vertical: 20),
                    child: TabBar(
                      indicatorColor: Colors.green,
                      labelColor: Color(0xFF4F463D),
                      tabs: [
                        Tab(text: "${header_[0]}",),
                        Tab(text: "${header_[1]}",),
                        Tab(text: "${header_[2]}",),
                      ],
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                    ) ,
                  ),
                  Container(
                    child: Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          mainPageListView(),
                          mainPageListView(),
                          mainPageListView(),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: BottomNavigationBar(
                      currentIndex: curIndex,
                      onTap: (i){
                        setState(() {
                          curIndex = i;
                        });
                      },
                      selectedItemColor: Colors.green,
                      unselectedItemColor: Colors.grey,
                      unselectedLabelStyle: TextStyle(color: Colors.grey,),
                      items: [
                        BottomNavigationBarItem(label: "Season" ,icon: Icon(Icons.add_photo_alternate_outlined ,)),
                        BottomNavigationBarItem(label: "Search" ,icon: Icon(Icons.search , )),
                        BottomNavigationBarItem(label: "Wishlist" ,icon: Icon(Icons.favorite, )),
                        BottomNavigationBarItem(label: "my jungle" ,icon: Icon(Icons.local_florist,)),
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



