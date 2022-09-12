import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget bulidboutton({required String text, required Color? color}) {
    return Container(
        color: color,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        height: 80,
        width: 100,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                    child: Image.asset(
                  '/Users/nosa/Desktop/noufapp/nouf/assets/download.jpg',
                  width: 200,
                  height: 80,
                )),
                Container(
                    child: bulidboutton(text: "Name: Cat", color: Colors.white))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bulidboutton(text: "Age: 4", color: Colors.white),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bulidboutton(text: "Gender: Female", color: Colors.white),
                  ],
                ),
              ],
            ),
          ],
        )),
      ),
    ); //materialapp
  }
}
