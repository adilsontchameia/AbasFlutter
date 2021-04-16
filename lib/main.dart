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

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Numero de Abas e Animacao controlada pelo mixinProvider
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abas Flutter"),
        //Configurar TabBar
        //Controller
        bottom: TabBar(
          controller: _tabController,
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
      body: TabBarView(
        controller: _tabController,
        children: [
          Text("Pagina Principal"),
          Text("Pagina Principal"),
          Text("Pagina Principal"),
        ],
      ),
    );
  }
}
