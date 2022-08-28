import 'package:flutter/material.dart';
import './style.dart' as style;   // 아래 겹치는 문제 방지
import 'dart:convert';
import 'package:http/http.dart' as http;

// var theme;   --> 현재 파일에 theme 변수가 있었다면 theme에서 import 해온 변수랑 겹치게됨,
// var _theme;   >>> 다른 파일에서 쓸 수 없는 변수. 다만 getter를 써서 갖다 쓰기도 함...


void main() {
  runApp(MaterialApp(
      theme: style.theme,
      home: MyApp()));
}

var a = TextStyle();


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tab = 0;

  @override
  void initState() async{
    super.initState();
    var result = await http.get(Uri.parse('https://codingapple1.github.io/app/data.json'));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Instagram"),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add_box_outlined),
            iconSize: 30,)
        ],
      ),
      body: [Home(), Text("샵")][tab],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (i) => setState(() {
            tab = i;
          }), items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "shop")
      ]
      ),

    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 3, itemBuilder: (c, i){
      return Column(
        children: [
          Image.asset('assets/peed.jpeg'),
          Text('좋아요 100'),
          Text('User'),
          Text('Content')
        ],
      );
    });
  }
}

