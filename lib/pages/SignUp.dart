import 'package:flutter/material.dart';
import 'package:slate/pages/PhoneVerify.dart';
import 'Login.dart';
import 'PhoneVerify.dart';

class SignUp extends StatefulWidget{
  @override
  _SignUpPageState createState()=> _SignUpPageState();
}

class _SignUpPageState extends State<SignUp>{
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
            new Text("Create your account...", style: TextStyle(fontSize: 30.0,
            color: Colors.white)),

          new Form(
              child: new Theme(
                  data: new ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 25.0),
                          child: TextFormField(
                            decoration: new InputDecoration(
                                hintText: "First Name",
                                icon: Icon(Icons.person),fillColor: Colors.white
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 25.0),
                          child: TextFormField(
                            decoration: new InputDecoration(
                              hintText: "Last Name",
                                icon: Icon(Icons.person),fillColor: Colors.white
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      )
                    ],
                  ),
              )
          ),
          new Form(
              child: new Theme(data: new ThemeData(brightness: Brightness.dark, primarySwatch: Colors.blue),
                  child: new Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 25.0),
                        child: new TextFormField(
                          decoration: new InputDecoration(
                            hintText: "Phone Number",
                            icon: Icon(Icons.contact_phone), fillColor: Colors.white
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 25.0),
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
                              icon: Icon(Icons.lock), fillColor: Colors.white
                          ),
                          obscureText: true,
                        ),
                      ),
                    ],
                  )
              )
          ),
            Material(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              elevation: 10,
              color: Colors.white,
              child: MaterialButton(
                  minWidth: 150.0,
                  height: 35,
                  color: Colors.white,
                  child: new Text("NEXT", style: new TextStyle(color:Colors.black45),),
                  onPressed: ()=> {Navigator.push(context, MaterialPageRoute(builder: (context)=> PhoneVerify()))}),
            ),
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 40, 0, 40),
                  child: Center(
                      child: Text("Got an account?", style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      )
                  )
                ),
                new MaterialButton(
                    child: new Text("Log in", style: TextStyle(color: Colors.white, fontSize: 20),),
                    onPressed: ()=> {Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()))})
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Center(
                child: new Text("By signing up, you agree to our terms & conditions and privacy policy",
                style: new TextStyle(color: Colors.white, fontSize: 18,), textAlign: TextAlign.center,),
              ),
            )
          ],
        ),

      ),
    );
  }
}