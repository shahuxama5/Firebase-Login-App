import 'package:firebase_login_app/auth_controller.dart';
import 'package:firebase_login_app/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w,
              height: h*0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/loginimage.png'
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(height: 15,),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold
                    ),
                  ),
              Text(
                'Sign into your account',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[500]
                ),
              ),
                  SizedBox(height: 35,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(1,1),
                          color: Colors.grey.withOpacity(0.3)
                        )
                      ]
                    ),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.pinkAccent,
                          ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1,1),
                              color: Colors.grey.withOpacity(0.3)
                          )
                        ]
                    ),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(
                            Icons.password_outlined,
                            color: Colors.pinkAccent,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1
                              )
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 18,),
                  Row(
                    children: [
                      Expanded(
                          child: Container(),
                      ),
                      Text(
                        'Forgot your password?',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[500]
                        ),
                      ),
                    ],
                  )
              ]
            ),
            ),
            SizedBox(height: 25,),
            GestureDetector(
              onTap: (){
                AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
              },
              child: Container(
                width: w*0.45,
                height: h*0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/loginbutton.jpg'
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            RichText(
              text: TextSpan(
                text: "Don't have an account?",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 20
                ),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap=()=> Get.to(()=>SignUpPage()),
                      text: " Create",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                  ),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
