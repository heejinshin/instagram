import 'package:flutter/material.dart';
import './style.dart' as style;   // 아래 겹치는 문제 방지

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        actions: [Icon(Icons.add_box_outlined), ],
      ),
        body: Text('dd', style: Theme.of(context).textTheme.bodyText2,),

          bottomNavigationBar: BottomNavigationBar(
            // showUnselectedLabels: false,
            // showSelectedLabels: false,
            items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "home"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,), label: "shop")
          ]),
    );
  }
}
