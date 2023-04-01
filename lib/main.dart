import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/home_screen.dart';
import 'package:flutter_widget_ui/shared/components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Widget currentScreen = const HomeScreen();
  String currentTitle = 'Flutter Advanced Widget UI';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text(currentScreen.toString()),
        ),
        drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
            Container(height: 30,),
            ...listScreens(
            scaffoldKey: scaffoldKey,
            setState: (Widget screen){
              setState(() {
                currentScreen = screen;
              });
            },
          ),
      ],
    ),
        ),
    ),
    body: currentScreen,
    ),
    );
  }
}
