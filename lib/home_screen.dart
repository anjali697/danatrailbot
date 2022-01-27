//import 'dart:html';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  //defining some properties and variables
  //we need state key for animated list state

  final GlobalKey<AnimatedListState> _listkey = GlobalKey();
  List<String> _data = [];
  static const String BOT_URL = " https://aichatbotapp.herokuapp.com/bot";
  TextEditingController queryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text("DanaChatterbotApp"),
      ),
      body: Stack(
        children: <Widget>[
          AnimatedList(
            key: _listkey,
            initialItemCount: _data.length,
            itemBuilder: (BuildContext context, int index, Animation animation){
                return buildItem(_data[index], animation, index);
              },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ColorFiltered(
              colorFilter: const ColorFilter.linearToSrgbGamma(),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.message,
                        color: Colors.blue,
                      ),
                      hintText: "Enter Here!",
                      fillColor: Colors.white12,
                    ),
                    controller: queryController,
                    textInputAction: TextInputAction.search,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
    throw UnimplementedError();
  }
}

Widget buildItem(String item, Animation animation, int index){}
