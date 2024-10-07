import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gardenia/commonWidget/customTextField.dart';
import 'package:gardenia/commonWidget/upperLogo.dart';
import 'package:gardenia/theme.dart';
import 'package:get/get.dart';

class UserRegisterScreen extends StatefulWidget {
  const UserRegisterScreen({super.key});

  @override
  State<UserRegisterScreen> createState() => _UserRegisterScreenState();
}

class _UserRegisterScreenState extends State<UserRegisterScreen> {
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
              // SizedBox(height: height * 0.08),
              
              FadeInDown(
                  delay: Duration(milliseconds: 300),
                child: const Text("Sign up" ,  
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
                          icon: Icon(Icons.person_outline),
                          onIconPressed: () {},
                          title: "First Name",
                          controller: TextEditingController(),
                          keyboardType: TextInputType.name,
                          obscureText: false,
                        ),
              ),
                      SizedBox(height: 20),
                      FadeInDown(
                  delay: Duration(milliseconds: 300),
                child: CustomTextField(
                          icon: Icon(Icons.person_outline),
                          onIconPressed: () {},
                          title: "Last Name",
                          controller: TextEditingController(),
                          keyboardType: TextInputType.name,
                          obscureText: false,
                        ),
              ),
                      SizedBox(height: 20),
              FadeInDown(
                  delay: Duration(milliseconds: 300),
                child: CustomTextField(
                          icon: Icon(Icons.mail_outline),
                          onIconPressed: () {},
                          title: "Email",
                          controller: TextEditingController(),
                          keyboardType: TextInputType.emailAddress,
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
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true ,
                        ),
                      ), 
                      SizedBox(height: 20),
                      FadeInDown(
                  delay: Duration(milliseconds: 300),
                child: CustomTextField(
                          icon: Icon(Icons.phone_outlined),
                          onIconPressed: () {},
                          title: "Phone",
                          controller: TextEditingController(),
                          keyboardType: TextInputType.numberWithOptions(),
                          obscureText: false,
                        ),
              ),
              SizedBox(height: height * 0.1),
              FadeInDown(
                  delay: Duration(milliseconds: 300),
                child: InkWell(
                  onTap: ()=> Get.toNamed('login') ,
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: ThemeColor.primary
                    ),
                    padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 20 ),
                    child: Center(
                      child: Text(
                        ' Sign up ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}