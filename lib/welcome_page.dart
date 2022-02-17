import 'package:firebase_login_app/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

  String email;

   WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

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
                          'assets/images/signup.png'
                      ),
                      fit: BoxFit.cover
                  )
              ),
              child: Column(
                children: [
                  SizedBox(height: h*0.13,),
                  CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 53,
                    backgroundImage: AssetImage(
                        'assets/images/profileimg.jpg'
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              width: w,
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    email,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[500]
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 100,),
            GestureDetector(
              onTap: (){
                AuthController.instance.logOut();
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
                    'Sign out',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
