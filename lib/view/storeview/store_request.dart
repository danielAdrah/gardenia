// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:gardenia/theme.dart';

class StoreOrder extends StatefulWidget {
  final String clientPhone;
  final String clientName;
  final String clientLoc;

  StoreOrder({
    Key? key,
    required this.clientName,
    required this.clientPhone,
    required this.clientLoc,
  }) : super(key: key);

  @override
  _StoreOrderState createState() => _StoreOrderState();
}

class _StoreOrderState extends State<StoreOrder> {
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
                    Text('${widget.clientName}'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('${widget.clientPhone}'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(widget.clientLoc),
                  ],
                ),
                // CircleAvatar(
                //   radius: 30,
                //   backgroundImage: AssetImage(
                //     "assets/images/logo.png",
                //   ),
                // )
                Icon(
                  Icons.task_alt,
                  size: 50,
                  color: Colors.pinkAccent,
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
                    _orderDialog(context);
                  },
                  child: Text(
                    'Reject',
                    style: TextStyle(color: ThemeColor.black),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          Colors.green.withOpacity(0.6))),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Request Accepted')),
                    );
                  },
                  child: Text(
                    'Accept',
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

  Future<dynamic> _orderDialog(BuildContext context) {
    return showPlatformDialog(
      context: context,
      builder: (context) => BasicDialogAlert(
        title: Center(child: Text("Be careful")),
        content: Text("Are you sure you want to reject this order ?"),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BasicDialogAction(
                title: Text(
                  "Yes",
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              BasicDialogAction(
                title: Text(
                  "No",
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
