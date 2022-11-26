// Create a service to handle the parking spot creation and list
// The service will call the API to create and list parking spots

import 'dart:convert';

import '../models/ParkingSpot.dart';

import 'package:http/http.dart' as http;

class ParkingSpotService {

  String base_url = 'https://controle-vaga.herokuapp.com/parking-spot';

  Future<ParkingSpot> createParkingSpot(ParkingSpot parkingSpot) async {
    final response = await http.post(
      Uri.parse(base_url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(parkingSpot.toJson()),
    );
    if (response.statusCode == 201) {
      return ParkingSpot.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create parking spot.');
    }
  }
}
