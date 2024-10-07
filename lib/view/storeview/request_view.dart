import 'package:flutter/material.dart';

import 'store_request.dart';

class RequestView extends StatefulWidget {
  const RequestView({super.key});

  @override
  State<RequestView> createState() => _RequestViewState();
}

class _RequestViewState extends State<RequestView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: size.height,
        child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return StoreOrder(
                clientName: "Nomair Nasser",
                clientPhone: "16597853",
                clientLoc: "Al areed street ",
              );
            }),
      ),
    );
  }
}
