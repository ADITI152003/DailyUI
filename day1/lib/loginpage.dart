import 'package:flutter/material.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return  Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 12,
            color: Colors.black,),


        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: w*0.05, vertical: h*0.03),
          height: h,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: <Widget>[
                  Text("Login",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text("Login to your account",
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.grey[700]),)
                ],
              ),
              SizedBox(
                height: h*0.05,
              ),
              Column(
                children: <Widget>[
                  SizedBox(width:w,child: Text("Email",textAlign:TextAlign.left,style: TextStyle(),)),
                  TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),),
                  SizedBox(height: h*0.03),
                  SizedBox(width:w,child: Text("Password",textAlign:TextAlign.left,style: TextStyle(),)),
                  TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),),
                ],
              ),
                Container(
                  height: h /2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assests/Privacy policy-amico.png"))),
                ),
            ],
          ),
        )),
      ),
    );
  }
}

