import 'package:flutter/material.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);
  static const String id = "SignUpPage";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.green.shade900,
              Colors.green.shade500,
              Colors.green.shade400,
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // #Sign Up 
            const SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Sign Up", style: TextStyle(color:Colors.white, fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 20),)
                ],
              ),
            ),
            // 
            const SizedBox(height: 21,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        // # Fullname, Email, Phone, Password
                        const SizedBox(height: 60,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Color.fromRGBO(171, 171, 171, 0.7), blurRadius: 20, offset: Offset(0,10)),
                            ]
                          ),
                          child: Column(
                            children: [
                              Container(
                                  padding:EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Fullname",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                              ),
                              Container(
                                  padding:EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                              ),
                              Container(
                                  padding:EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Phone",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                              ),
                              Container(
                                  padding:EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
                                  ),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                              ),

                            ],
                          ),
                        ),
                        const SizedBox(height: 40,),
                        // # SignUp
                        Container(
                          margin:EdgeInsets.symmetric(horizontal: 60),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green
                          ),
                          child: Center(
                            child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        // # Sign Up with SNS
                        SizedBox(height: 30),
                        Text("Sign Up with SNS", style: TextStyle(color: Colors.grey, fontWeight:FontWeight.bold)),
                        SizedBox(height: 30),

                        // #Facebook, Google, Apple,
                        Row(
                          children:[
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue
                                ),
                                child: Center(
                                  child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height:50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:Colors.red
                                ),
                                child: Center(
                                  child: Text("Google", style:TextStyle(color:Colors.white, fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height:50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:Colors.black
                                ),
                                child: Center(
                                  child: Text("Apple", style:TextStyle(color:Colors.white, fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                          ]
                        )
                      ],
                    ),
                  ),
                )
              ),
            )
          ],
        ),
      )
      
    );
  }
}