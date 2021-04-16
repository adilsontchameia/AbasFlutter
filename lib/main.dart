import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abas Flutter"),
        //Configurar TabBar
        bottom: TabBar(
          tabs: [
            //Widget
            Tab(
              text: "Home",
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "Imagens",
              icon: Icon(Icons.image),
            ),
            Tab(
              text: "Videos",
              icon: Icon(Icons.video_call),
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
