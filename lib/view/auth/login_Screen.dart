// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gardenia/commonWidget/customTextField.dart';
import 'package:gardenia/commonWidget/upperLogo.dart';
import 'package:gardenia/theme.dart';
import 'package:gardenia/view/userview/bottomNavUser.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ThemeColor.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInDown(
                  delay: Duration(milliseconds: 300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UpperLogo(width: width * 0.5, height: height),
                    ],
                  )),
              SizedBox(height: height * 0.05),
              FadeInDown(
                  delay: Duration(milliseconds: 300),
                child: const Text("Login" ,  
                 style: TextStyle(
                  fontSize: 35 , 
                  color: Colors.black,
                  fontWeight: FontWeight.w700 ,
                ),),
              ),
              const SizedBox(height: 30 ,),
              FadeInDown(
                  delay: Duration(milliseconds: 300),
                child: CustomTextField(
                          icon: Icon(Icons.mail_outline),
                          onIconPressed: () {},
                          title: "Email",
                          controller: TextEditingController(),
                          keyboardType: TextInputType.name,
                          obscureText: false,
                        ),
              ),
                      SizedBox(height: 20),
                      FadeInDown(
                  delay: Duration(milliseconds: 300),
                        child: CustomTextField(
                          icon: Icon(Icons.lock_outline),
                          onIconPressed: () {},
                          title: "Password",
                          controller: TextEditingController(),
                          keyboardType: TextInputType.name,
                          obscureText: false,
                        ),
                      ), 
                      
              // const TextField(
              //  obscureText: false ,
              //  style: TextStyle(color: Colors.grey),
              //  decoration: InputDecoration(
              //   border: InputBorder.none ,
              //   prefixIcon: Icon(Icons.email_outlined , color: Colors.grey,) ,
              //   hintText: "Enter Email",
              //  ),
              //  cursorColor: Colors.grey,
              // ),
              // const SizedBox(height: 30 ,),
              // const TextField(
              //  obscureText: true ,
              //  style: TextStyle(color: Colors.grey),
              //  decoration: InputDecoration(
              //   border: InputBorder.none ,
              //   prefixIcon: Icon(Icons.lock_outline , color: Colors.grey,) ,
              //   hintText: "Enter Password",
              //  ),
              //  cursorColor: Colors.grey,
              // ),
              // const SizedBox(height: 10 ,),
              // CustomTextField(
              //   icon: Icon(Icons.email_outlined),
              //   onIconPressed: (){},
              //   title:"Email",
              //   obscureText: false,
              //   keyboardType: TextInputType.text,
              // ),
              
              SizedBox(height: height * 0.1),
              FadeInDown(
                  delay: Duration(milliseconds: 300),
                child: InkWell(
                  onTap:(){Get.to(BottomNavBarUser());},
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: ThemeColor.primary
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 20 ),
                    child: Center(
                      child: Text(
                        ' login ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: FadeInDown(
                    delay: Duration(milliseconds: 300),
                  child: Text(
                          "Forgot password ? ",
                         style: TextStyle(
                            color: ThemeColor.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                            ), 
                        
                      ),),
              ),
              FadeInDown(
                delay: Duration(milliseconds: 370),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Text(
                        "Don't have an account ? ",
                       style: TextStyle(
                          color: ThemeColor.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500
                          ), 
                      
                    ),
                    TextButton(
                      child: Text("Sign Up",
                      style: TextStyle(
                            color: ThemeColor.primary ,
                          fontWeight: FontWeight.bold, 
                            fontSize: 13),),
                            onPressed: (){
                              Get.toNamed("/");
                            },
                      
                    ),
                  ],
                ),
              ),
              

            ],
          ),
        ),
      ),
    );
  }
}