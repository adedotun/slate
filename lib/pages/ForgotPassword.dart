import 'package:flutter/material.dart';
import 'package:slate/pages/ResetPassword.dart';

class ForgotPassword extends StatefulWidget{
  @override
  _ForgotPasswordState createState()=> _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF081748),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image.asset("assets/appslate.png",)
          ],
        ),
      ),
      backgroundColor: Color(0xFF081748),
      resizeToAvoidBottomInset: false,

      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 20.0),
                child: Text("Password Reset", style: TextStyle(fontSize: 50,
                    color: Colors.white),
                )
            ),
        new Form(
            child: new Theme(data: new ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
                child: new Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 25.0),
                      child: new TextFormField(
                        decoration: new InputDecoration(
                            hintText: "Email Address",
                            icon: Icon(Icons.email), fillColor: Colors.white
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ],
                )
            )
        ),
            Padding(padding: EdgeInsets.only(top: 25.0),),
            new Container(
                width: 200,
                child: OutlineButton(
                    child: new Text("NEXT", style: TextStyle(fontSize: 20),),
                    textColor: Colors.white,
                    borderSide: BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 1.0
                    ),
                    onPressed: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword()),)}
                    )
            )
          ],
        ),
      ),


    );
  }
}