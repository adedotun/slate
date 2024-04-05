import 'package:flutter/material.dart';
import 'package:slate/pages/Login.dart';
import 'pages/SignUp.dart';

void main() => runApp(new Slate());

class Slate extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new IndexPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class IndexPage extends StatefulWidget{
  @override
  State createState() => IndexPageState();
}

class IndexPageState extends State<IndexPage> with SingleTickerProviderStateMixin{
  AnimationController _logoAnime;
  Animation<double> _logoAnimation;

  @override
  void initState(){
    super.initState();
    
    _logoAnime =new AnimationController(vsync: this, duration: new Duration(milliseconds: 500));
    _logoAnimation =new CurvedAnimation(parent: _logoAnime, curve: Curves.bounceInOut);
    _logoAnimation.addListener(()=> this.setState(() {}));
    _logoAnime.forward();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0x08174B),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/slate2.png",
                  height: 150.0,
                  width: 180.0,),
              new Padding(padding: EdgeInsets.only(top: 80.0)),
              Container(
                width: 250,
                child: OutlineButton(
                    child: new Text("SIGN UP", style: TextStyle(fontWeight: FontWeight.bold),),
                    textColor: Colors.white,
                    borderSide: BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 0.8
                    ),
                    onPressed: ()=>{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()),)
                    }),
              ),
              new Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
              Container(
                  width: 250,
                  child: OutlineButton(
                      child: new Text("LOG IN"),
                      textColor: Colors.white,
                      borderSide: BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 0.8
                      ),
                      onPressed: ()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),)
                      }),
              ),
            ],
          )
        ],
      ),
    );
  }
}

