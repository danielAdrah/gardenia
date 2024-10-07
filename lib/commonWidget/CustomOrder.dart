// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gardenia/theme.dart';

class CustomerOrder extends StatefulWidget {
  final String phone;
  final String storeName;

  CustomerOrder({
    Key? key,
    required this.storeName,
    required this.phone,
  }) : super(key: key);

  @override
  _CustomerOrderState createState() => _CustomerOrderState();
}

class _CustomerOrderState extends State<CustomerOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ThemeColor.primary.withOpacity(.5)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${widget.storeName}'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('${widget.phone}'),
                    SizedBox(
                      height: 10,
                    ),
                    Text("City - Building"),
                  ],
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    "assets/images/store.jpg",
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all(Colors.red.withOpacity(0.6))),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Request send successfuly')),
                    );
                  },
                  child: Text(
                    'request In Your Hands service',
                    style: TextStyle(color: ThemeColor.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
