import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'ChangePassword.dart';

class ResetPassword extends StatefulWidget{
  @override
  _ResetPasswordState createState()=> _ResetPasswordState();
}
class _ResetPasswordState extends State<ResetPassword>{
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
                child: Text("Password Reset", style: TextStyle(fontSize: 50,
                    color: Colors.white),
                )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0,20.0,20.0,40.0),
              child: new Text("Input the six-digit code that was just sent to your email address..",
                style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
            Padding(
                padding: EdgeInsets.only(left: 40.0, right: 40.0),
                child: PinInputTextField(
                  pinLength: 6,
                  autoFocus: true,
                  keyboardType: TextInputType.number,
                  decoration: UnderlineDecoration(enteredColor: Colors.white,
                    textStyle: TextStyle(color: Colors.white, fontSize: 25),
                    //errorText: "Wrong, please check again!"
                  ),
                )
            ),
            Padding(padding: EdgeInsets.only(top: 50.0),),
            new Container(
                width: 150,
                child: OutlineButton(
                    child: new Text("NEXT"),
                    textColor: Colors.white,
                    borderSide: BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 1.0
                    ),
                    onPressed: ()=>{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword()),)
                    })
            )
          ],
        ),
      ),

    );
  }
}