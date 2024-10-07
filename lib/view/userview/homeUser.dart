import 'package:flutter/material.dart';
import 'package:gardenia/theme.dart';
import 'package:gardenia/view/common_widget/detail_page.dart';
import 'package:gardenia/view/common_widget/plant_widget.dart';
import 'package:gardenia/models/plants.dart';

class Homeuser extends StatefulWidget {
  const Homeuser({super.key});

  @override
  State<Homeuser> createState() => _HomeuserState();
}

class _HomeuserState extends State<Homeuser> {
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPage(
                                  plantId: _plantList[index].plantId,
                                )));
                  },
                  child: PlantWidget(
                    index: index,
                    plantList: _plantList,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(
                                    plantId: _plantList[index].plantId,
                                  )));
                    },
                  ));
            }),
      ),
    );
  }
}
