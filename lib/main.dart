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
  String searchVal ='';
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
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(top: 40),
                  child: TextField(
                    onChanged: (val){
                      setState(() {
                        searchVal = val;
                      });
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2, color: Colors.blue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      labelText: 'Search',
                      labelStyle: const TextStyle(
                        color: Colors.blue,
                      ),
                      hintText: 'Search ...',
                      hintStyle: const TextStyle(
                        color: Colors.blue,
                      ),
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                ...listScreens(
                  scaffoldKey: scaffoldKey,
                  setState: (Widget screen) {
                    setState(() {
                      currentScreen = screen;
                      searchVal = '';
                    });
                  },
                  search: searchVal,
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
