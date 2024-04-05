import 'package:flutter/material.dart';
import 'ForgotPassword.dart';
import 'SignUp.dart';
import 'Home.dart';

class Login extends StatefulWidget{
  @override
 _LoginPageState createState()=> _LoginPageState();
}

class _LoginPageState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x081748),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset("assets/appslate.png",)
          ],
        ),
      ),
      backgroundColor: Color(0x081748),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: new EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            new Text("Log In", style: TextStyle(fontSize: 50,
                    color: Colors.white),
                ),
            new Form(
                child: new Theme(data: new ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
                    child: new Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 25.0),
                          child: new TextFormField(
                            decoration: new InputDecoration(
                                hintText: "Email Address",
                                icon: Icon(Icons.email), fillColor: Colors.white
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 40.0),
                          child: new TextField(
                            decoration: new InputDecoration(
                                hintText: "Password",
                                icon: Icon(Icons.lock), fillColor: Colors.white,

                            ),
                            obscureText: true,

                          ),
                        ),
                      ],
                    )
                )
            ),
            Container(
              width: 150,
                child: OutlineButton(
                    child: new Text("LOGIN"),
                    textColor: Colors.white,
                    borderSide: BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 1.0
                    ),
                    onPressed: ()=>{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()),)
                    })
            ),
                Padding( padding: EdgeInsets.only(top: 40),),
                new MaterialButton(
                    child: new Text("Forgot Password?", style: TextStyle(color: Colors.white, fontSize: 20),),
                    onPressed: ()=> {Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>
                            ForgotPassword()))}),
            new Row(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.fromLTRB(100, 15, 0, 15),
                    child: Center(
                        child: Text("New User?", style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        )
                    )
                ),
                new MaterialButton(
                    child: new Text("Create account", style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: ()=> {Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()))})
              ],
            )
          ],
        ),

      ),
    );
  }
}
