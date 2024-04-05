import 'package:flutter/material.dart';
import 'Login.dart';

class ChangePassword extends StatefulWidget{
  @override
  _ChangePasswordState createState()=> _ChangePasswordState();
}
class _ChangePasswordState extends State<ChangePassword>{
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
            new Text("Password Reset", style: TextStyle(fontSize: 50,
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
                                hintText: "New Password",
                                icon: Icon(Icons.lock), fillColor: Colors.white
                            ),
                            obscureText: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 40.0),
                          child: new TextField(
                            decoration: new InputDecoration(
                                hintText: "Confirm Password",
                                icon: Icon(Icons.lock), fillColor: Colors.white
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
                    child: new Text("SUBMIT"),
                    textColor: Colors.white,
                    borderSide: BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 1.0
                    ),
                    onPressed: ()=>{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),)
                    })
            ),
          ],
        ),

      ),

    );
  }
}