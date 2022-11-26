import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/Header.dart';
import '../components/Menu.dart';
import '../models/ParkingSpot.dart';

// The page will have a simple list with an element per parking spot
// Each element will have the following information:
// - licensePlateCar: String
// - EditButton: Button
// - DeleteButton: Button

// The list need to be generated from a list of parking spots
// The list need to be scrollable

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Create a list of parking spots using the ParkingSpot class
    List<ParkingSpot> parkingSpots = [
      ParkingSpot(
        parkingSpotNumber: '1',
        licensePlateCar: 'ABC-1234',
        brandCar: 'Ford',
        modelCar: 'Fiesta',
        colorCar: 'Red',
        responsibleName: 'John Doe',
        apartament: '101',
        block: 'A',
      ),
      ParkingSpot(
        parkingSpotNumber: '2',
        licensePlateCar: 'DEF-5678',
        brandCar: 'Chevrolet',
        modelCar: 'Cruze',
        colorCar: 'Blue',
        responsibleName: 'Jane Doe',
        apartament: '102',
        block: 'A',
      ),
      ParkingSpot(
        parkingSpotNumber: '3',
        licensePlateCar: 'GHI-9012',
        brandCar: 'Toyota',
        modelCar: 'Corolla',
        colorCar: 'White',
        responsibleName: 'John Doe',
        apartament: '103',
        block: 'A',
      ),
      ParkingSpot(
        parkingSpotNumber: '4',
        licensePlateCar: 'JKL-3456',
        brandCar: 'Honda',
        modelCar: 'Civic',
        colorCar: 'Black',
        responsibleName: 'Jane Doe',
        apartament: '104',
        block: 'A',
      ),
      ParkingSpot(
        parkingSpotNumber: '5',
        licensePlateCar: 'MNO-7890',
        brandCar: 'Nissan',
        modelCar: 'Versa',
        colorCar: 'Silver',
        responsibleName: 'John Doe',
        apartament: '105',
        block: 'A',
      ),
      ParkingSpot(
        parkingSpotNumber: '6',
        licensePlateCar: 'PQR-1234',
        brandCar: 'Hyundai',
        modelCar: 'Accent',
        colorCar: 'Red',
        responsibleName: 'Jane Doe',
        apartament: '106',
        block: 'A',
      ),
      ParkingSpot(
        parkingSpotNumber: '7',
        licensePlateCar: 'STU-5678',
        brandCar: 'Kia',
        modelCar: 'Rio',
        colorCar: 'Blue',
        responsibleName: 'John Doe',
        apartament: '107',
        block: 'A',
      ),
    ];

    return Scaffold(
      appBar: Header(context),
      drawer: Menu(context),
      body: ListView.builder(
        itemCount: parkingSpots.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(parkingSpots[index].licensePlateCar!),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

