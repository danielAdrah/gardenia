import 'package:flutter/material.dart';
import 'package:gardenia/commonWidget/CustomOrder.dart';

class Inyourhandscreen extends StatefulWidget {
  const Inyourhandscreen({super.key});

  @override
  State<Inyourhandscreen> createState() => _InyourhandscreenState();
}

class _InyourhandscreenState extends State<Inyourhandscreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: size.height  ,
            child: ListView.builder(
                itemCount: 3 ,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return CustomerOrder(storeName: "Gardenia Store", phone: "16597853");
                }),
          ), 
    );
  }
}