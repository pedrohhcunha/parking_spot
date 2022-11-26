import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parking_spot/models/ParkingSpot.dart';

import '../components/Header.dart';
import '../components/Menu.dart';
import '../controllers/ParkingSpot.dart';

// Create a Create Page that will be used to create a Parking Spot
// The Parking Spot need the following information:
// - parkingSpotNumber: String
// - licensePlateCar: String
// - brandCar: String
// - modelCar: String
// - colorCar: String
// - responsibleName: String
// - apartament: String
// - block: String

// The page will have a simple form with an input per field
// At the end of form will have a button to submit the form

class Create extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    final _parkingSpotNumberController = TextEditingController();
    final _licensePlateCarController = TextEditingController();
    final _brandCarController = TextEditingController();
    final _modelCarController = TextEditingController();
    final _colorCarController = TextEditingController();
    final _responsibleNameController = TextEditingController();
    final _apartamentController = TextEditingController();
    final _blockController = TextEditingController();

    var parkingSpotController = ParkingSpotController();

    // Create TextFormField validators
    String? validateFormField(String value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    }

    // Create a handle to submit the form
    void handleSubmit() async {
      if (_formKey.currentState!.validate()) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Processing Data')));
      }

      ParkingSpot parkingSpot = ParkingSpot(
        id: "",
        registrationDate: "",
        parkingSpotNumber: _parkingSpotNumberController.text,
        licensePlateCar: _licensePlateCarController.text,
        brandCar: _brandCarController.text,
        modelCar: _modelCarController.text,
        colorCar: _colorCarController.text,
        responsibleName: _responsibleNameController.text,
        apartament: _apartamentController.text,
        block: _blockController.text,
      );

      print(parkingSpot);

      var response = await parkingSpotController.createParkingSpot(parkingSpot);

      print(response);

      if (response != null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Parking Spot created')));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Error creating Parking Spot')));
      }
    }

    return Scaffold(
      appBar: Header(context),
      drawer: Menu(context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Parking Spot Number',
                  ),
                  validator: (value) => validateFormField(value!),
                  controller: _parkingSpotNumberController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'License Plate Car',
                  ),
                  validator: (value) => validateFormField(value!),
                  controller: _licensePlateCarController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Brand Car',
                  ),
                  validator: (value) => validateFormField(value!),
                  controller: _brandCarController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Model Car',
                  ),
                  validator: (value) => validateFormField(value!),
                  controller: _modelCarController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Color Car',
                  ),
                  validator: (value) => validateFormField(value!),
                  controller: _colorCarController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Responsible Name',
                  ),
                  validator: (value) => validateFormField(value!),
                  controller: _responsibleNameController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Apartament',
                  ),
                  validator: (value) => validateFormField(value!),
                  controller: _apartamentController,
                ),
                SizedBox(height: 8.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Block',
                  ),
                  validator: (value) => validateFormField(value!),
                  controller: _blockController,
                ),
                SizedBox(height: 8.0),
                ElevatedButton(
                  child: Text('Submit'),
                  onPressed: handleSubmit,
                )
              ],
            ),
          )
        )
      ),
    );
  }
}

