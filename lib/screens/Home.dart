import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parking_spot/screens/Edit.dart';

import '../components/Header.dart';
import '../components/Menu.dart';

import 'package:get/get.dart';

import '../controllers/ParkingSpot.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var controller = ParkingSpotController.parkingSpotController;

    controller.listParkingSpot();

    return Scaffold(
      appBar: Header(context),
      drawer: Menu(context),
      body: ListView.builder(
        itemCount: controller.listParkingSpotObs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(controller.listParkingSpotObs[index].licensePlateCar),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    Get.to(Edit(
                      objeto: controller.listParkingSpotObs[index]
                    ));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    controller.deleteParkingSpot(controller.listParkingSpotObs[index]);
                    Get.snackbar("Sucesso", "Deletado com sucesso");
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

