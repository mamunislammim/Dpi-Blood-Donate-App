import 'package:dpi_blood_donate/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../screens/login_screen.dart';

class UserSectionWidget extends StatelessWidget {
  const UserSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: .5,
          fit: BoxFit.fill,
            image: AssetImage("images/user1.gif"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: height/10,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
            },
            child: Container(
              height: height/7,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image:  AssetImage("images/loginGif.gif"))
              ),
            ),
          ),
            SizedBox(height: height/10,),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen(
              )));
            },
            child: Container(
              height: height/7,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/registerGif.gif")),
              ),
            ),
          ),
           SizedBox(height: height/10,),
        ]
      ),
    );
  }
}
