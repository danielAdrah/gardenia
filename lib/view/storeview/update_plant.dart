// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../commonWidget/customTextField.dart';
import '../../commonWidget/primareButton.dart';
import '../../theme.dart';

// ignore: must_be_immutable
class UpdatePlant extends StatelessWidget {
  UpdatePlant({super.key});

  TextEditingController plantName = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController category = TextEditingController();
  TextEditingController desc = TextEditingController();
  TextEditingController size = TextEditingController();
  TextEditingController humidity = TextEditingController();
  TextEditingController temp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeColor.background,
          foregroundColor: ThemeColor.blackColor,
          title: const Text(
            'Edit Plant',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                // SizedBox(height: 20),
                Image.asset(
                  "assets/images/gardeniaLogo2.png",
                  height: 150,
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    "Enter the updated information",
                    style: TextStyle(
                        color: ThemeColor.blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                CustomTextField(
                  icon: Icon(Icons.emoji_emotions),
                  title: "Plant name",
                  onIconPressed: () {},
                  controller: plantName,
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                SizedBox(height: 30),
                CustomTextField(
                  icon: Icon(Icons.emoji_emotions),
                  title: "Plant Category",
                  onIconPressed: () {},
                  controller: category,
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                SizedBox(height: 30),
                CustomTextField(
                  icon: Icon(Icons.emoji_emotions),
                  title: "Plant Price",
                  onIconPressed: () {},
                  controller: price,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                ),
                SizedBox(height: 30),
                CustomTextField(
                  icon: Icon(Icons.emoji_emotions),
                  title: "Plant Size",
                  onIconPressed: () {},
                  controller: size,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                ),
                SizedBox(height: 30),
                CustomTextField(
                  icon: Icon(Icons.emoji_emotions),
                  title: "Plant Description",
                  onIconPressed: () {},
                  controller: desc,
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                SizedBox(height: 30),
                CustomTextField(
                  icon: Icon(Icons.emoji_emotions),
                  title: "Plant Temperature",
                  onIconPressed: () {},
                  controller: temp,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                ),
                SizedBox(height: 30),
                CustomTextField(
                  icon: Icon(Icons.emoji_emotions),
                  title: "Plant humidity",
                  onIconPressed: () {},
                  controller: humidity,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                ),
                SizedBox(height: 30),
                PrimaryButton(
                  text: "Edit",
                  height: 50,
                  width: 130,
                  onTap: () {
                    //method to add the new plant to the database
                  },
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
