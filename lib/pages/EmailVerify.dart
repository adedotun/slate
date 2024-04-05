import 'package:flutter/material.dart';
import 'Login.dart';

class EmailVerify extends StatefulWidget{
  @override
_EmailVerifyState createState()=> _EmailVerifyState();
}

class _EmailVerifyState extends State<EmailVerify>{
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
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 20.0),
                child: Text("Email Address Verification", style: TextStyle(fontSize: 50,
                    color: Colors.white),
                )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0,20.0,20.0,40.0),
              child: new Text("A verification link has been sent to bernardosilva@gmail.com..",
                style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
            Padding(padding: EdgeInsets.only(top: 50.0),),
            new Container(
                width: 200,
                child: OutlineButton(
                    child: new Text("VERIFY EMAIL", style: TextStyle(fontSize: 20),),
                    textColor: Colors.white,
                    borderSide: BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 1.0
                    ),
                    onPressed: ()=>{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),)
                    })
            )
          ],
        ),
      ),

    );
  }
}