// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../commonWidget/customTextField.dart';
import '../../commonWidget/primareButton.dart';
import '../../theme.dart';

class AddPlant extends StatefulWidget {
  const AddPlant({super.key});

  @override
  State<AddPlant> createState() => _AddPlantState();
}

class _AddPlantState extends State<AddPlant> {
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
            'Add Plants',
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
                  height: 250,
                  width: 250,
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
                  text: "Add",
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
