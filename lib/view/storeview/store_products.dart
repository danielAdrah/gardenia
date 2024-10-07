// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_dialogs/flutter_dialogs.dart';
import 'package:gardenia/theme.dart';
import 'package:gardenia/view/common_widget/detail_page.dart';
import 'package:gardenia/view/common_widget/plant_widget.dart';
import 'package:gardenia/models/plants.dart';
import 'package:get/get.dart';

import 'update_plant.dart';

class StoreProducts extends StatefulWidget {
  const StoreProducts({super.key});

  @override
  State<StoreProducts> createState() => _StoreProductsState();
}

class _StoreProductsState extends State<StoreProducts> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Plant> _plantList = Plant.plantList;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: size.height,
        child: ListView.builder(
            itemCount: _plantList.length,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  // onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder:(context) => DetailPage(plantId: _plantList[index].plantId,  )));
                  // },
                  child: PlantWidget(
                index: index,
                plantList: _plantList,
                onTap: () {
                  //dialog for deleting or updating the plant
                  showPlatformDialog(
                    context: context,
                    builder: (context) => BasicDialogAlert(
                      title:
                          Center(child: Text("${_plantList[index].plantName}")),
                      content: Text("What do you want to do to this plant ?"),
                      actions: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BasicDialogAction(
                              title: Text(
                                "Delete",
                                style: TextStyle(color: Colors.red),
                              ),
                              onPressed: () {
                                //this to delete plant from the database
                                Navigator.pop(context);
                              },
                            ),
                            BasicDialogAction(
                              title: Text("Edit",
                                  style: TextStyle(color: Colors.green)),
                              onPressed: () {
                                Navigator.pop(context);
                                //this to update the plant
                                Get.to(UpdatePlant());
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  );
               
                },
              ));
            }),
      ),
    );
  }
}
