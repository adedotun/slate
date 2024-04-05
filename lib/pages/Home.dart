import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState()=> _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0x081748),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0x081748),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home, color: Colors.white),
            title: Text("Cards", style: TextStyle(color: Colors.white),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share, color:Colors.white),
            title: Text("Transaction", style: TextStyle(color: Colors.white),)
          )
        ],
      ),
      drawer: Drawer(
        
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Image.asset("assets/slate.png"),
                  Text("Adedotun", style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            ListTile(
              title: Text("Home", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              title: Text('Item 1', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

    );
  }
}