// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gardenia/commonWidget/customTextField.dart';
import 'package:gardenia/commonWidget/settings_value.dart';
import 'package:gardenia/theme.dart';
import 'package:gardenia/view/auth/selectAccountScreen.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';

class ProfileStore extends StatefulWidget {
  const ProfileStore({super.key});

  @override
  State<ProfileStore> createState() => _ProfileStoreState();
}

class _ProfileStoreState extends State<ProfileStore> {
  final imagePicker = ImagePicker();
  String? imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(children: [
          // NavBar(title: "Settings"),
          const SizedBox(height: 35),
          FadeInDown(
            delay: Duration(milliseconds: 200),
            curve: Curves.decelerate,
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                        radius: 70,
                        backgroundImage: imagePath == null
                            ? AssetImage("assets/img/profilePic.png")
                            : FileImage(File(imagePath!))
                                as ImageProvider<Object>?),
                    Positioned(
                      right: 10,
                      bottom: 1,
                      child: InkWell(
                        onTap: () async {
                          var pickedImage = await imagePicker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            if (pickedImage != null) {
                              imagePath = pickedImage.path;
                            }
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: ThemeColor.white,
                          radius: 20,
                          child: Icon(
                            Icons.camera_alt,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // height: media.width * 1,
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 20),
                          child: Column(children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 15, right: 15, bottom: 15, left: 2.5),
                              decoration: BoxDecoration(
                                color:
                                    Colors.pinkAccent.shade100.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Column(
                                children: [
                                  SettingsValue(
                                    name: "First Name ",
                                    icon: Icons.person,
                                    child: Text(
                                      "Nasser",
                                      style: TextStyle(color: ThemeColor.white),
                                    ),
                                    onTap2: () {},
                                  ),
                                  const SizedBox(height: 5),
                                  SettingsValue(
                                    name: "Last Name ",
                                    icon: Icons.person,
                                    child: Text(
                                      "Ahmad",
                                      style: TextStyle(color: ThemeColor.white),
                                    ),
                                    onTap2: () {},
                                  ),
                                  const SizedBox(height: 5),
                                  SettingsValue(
                                    name: "Email",
                                    icon: Icons.mail,
                                    child: Text(
                                      "nasser123@gmail.com",
                                      style: TextStyle(color: ThemeColor.white),
                                    ),
                                    onTap2: () {},
                                  ),
                                  const SizedBox(height: 5),
                                  SettingsValue(
                                    name: "Password",
                                    icon: Icons.password,
                                    child: Text(
                                      "nasser123",
                                      style: TextStyle(color: ThemeColor.white),
                                    ),
                                    onTap2: () {},
                                  ),
                                  const SizedBox(height: 10),
                                  SettingsValue(
                                    name: "Phone",
                                    icon: Icons.person,
                                    child: Text(
                                      "846521655",
                                      style: TextStyle(color: ThemeColor.white),
                                    ),
                                    onTap2: () {},
                                  ),
                                  InkWell(
                                    onTap: () {
                                      _showEditProfileDialog(context);
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          top: 8,
                                          bottom: 8,
                                          right: 15,
                                          left: 15),
                                      decoration: BoxDecoration(
                                          color: ThemeColor.primary
                                              .withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color: ThemeColor.primary
                                                  .withOpacity(0.15))),
                                      child: Text(
                                        "Edit",
                                        style: TextStyle(
                                            color: ThemeColor.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          // height: media.width * 1,
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20, bottom: 20),
                          child: Column(children: [
                            Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color:
                                    Colors.pinkAccent.shade100.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Column(
                                children: [
                                  SettingsValue(
                                    name: "Log out ",
                                    icon: Icons.logout_outlined,
                                    child: SizedBox(),
                                    onTap2: () {
                                      showPlatformDialog(
                                        context: context,
                                        builder: (context) => BasicDialogAlert(
                                          title: Text(
                                              "Are you sure you want to log out ? "),
                                          actions: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                BasicDialogAction(
                                                  title: Text("Yes"),
                                                  onPressed: () {
                                                    Get.offAll(
                                                        SelecetAccount());
                                                  },
                                                ),
                                                BasicDialogAction(
                                                  title: Text("No"),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(height: 5),
                                  SettingsValue(
                                    name: "Delete Account",
                                    icon: Icons.delete,
                                    child: SizedBox(),
                                    onTap2: () {
                                      showPlatformDialog(
                                        context: context,
                                        builder: (context) => BasicDialogAlert(
                                          title: Text(
                                              "Are you sure you want to delete the acount ? "),
                                          actions: <Widget>[
                                            BasicDialogAction(
                                              title: Text("Yes"),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                            BasicDialogAction(
                                              title: Text("No "),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                          ]),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }

  void _showEditProfileDialog(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          // title: Text(''),
          content: Form(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextFieldWithoutIcon(
                  onIconPressed: () {},
                  title: "First Name ",
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                SizedBox(height: 10),
                CustomTextFieldWithoutIcon(
                  onIconPressed: () {},
                  title: "last Name ",
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                SizedBox(height: 10),
                CustomTextFieldWithoutIcon(
                  onIconPressed: () {},
                  title: " Email",
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                SizedBox(height: 10),
                CustomTextFieldWithoutIcon(
                  onIconPressed: () {},
                  title: "Password",
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name,
                  obscureText: false,
                ),
                SizedBox(height: 10),
                CustomTextFieldWithoutIcon(
                  onIconPressed: () {},
                  title: "Phone",
                  controller: TextEditingController(),
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text('Save'),
                  onPressed: () {
                    // Save the changes here
                    // print('Saved: ${_nameController.text} | ${_emailController.text}');
                    Navigator.of(context).pop();
                  },
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
