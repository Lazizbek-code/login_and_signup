    import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);
  static const  String id = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin:Alignment.topCenter,
            colors: [
              Colors.green.shade900,
              Colors.green.shade500,
              Colors.green.shade400,  
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 10),
                  Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 20),),
                  
                ],
              ),
            ),
            SizedBox(height: 21),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child:Column(
                        children: [
                          SizedBox(height: 60,),
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
                          SizedBox(height: 40,),

                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.green,
                            ),
                            child: Center(
                              child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          ),

                          SizedBox(height: 30),
                          Text("Login with SNS", style: TextStyle(color: Colors.grey, fontWeight:FontWeight.bold)),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child:Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blue,
                                  ),
                                  child: Center(
                                    child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                  ),
                                )
                              ),
                              SizedBox(width: 20,),
                               Expanded(
                                flex: 1,
                                child:Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black87,
                                  ),
                                  child: Center(
                                    child: Text("Github", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                  ),
                                )
                              ),
                            ],
                          ),
                        ],
                      )
                    ),
                  ),
              ),
            ),
          ],
        ),
      )
      
    );
  }
}