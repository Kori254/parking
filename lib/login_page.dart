import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    double l= MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            width: w,
            height: l*0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/logo.png"), fit: BoxFit.cover
              )
            ),

          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello",
                style: TextStyle(
                  fontSize: 70 ,
                  fontWeight: FontWeight.bold
                ),),
                Text("Sign into your account",
                  style: TextStyle(
                      fontSize: 20 ,
                      fontWeight: FontWeight.normal,
                      color: Colors.green
                  ),),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(

                          color: Colors.greenAccent
                        )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ),

                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(

                                color: Colors.greenAccent
                            )
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),

                  ),
                ),
                Row(children: [
                  Expanded(child: Container()),
                  Text("forgot password",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                    ),)

                ],),

              ],
            ),
          ),
          SizedBox(height: 70,),
          Container(
            width: w*0.5 ,
            height: l*0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage("img/loginbtn.png"), fit: BoxFit.cover
                )
            ),
            child: Center(
              child: Text("Sign In",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,

              ),),
            ),


          ),

        ],
      )

    );
  }
}
