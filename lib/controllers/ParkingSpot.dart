// Create controller to handle the parking spot creation
// The controller will call a service to connect into API
import 'package:parking_spot/services/ParkingStop.dart';

import '../models/ParkingSpot.dart';

class ParkingSpotController {
    ParkingSpotService parkingSpotService = ParkingSpotService();

    Future<ParkingSpot> createParkingSpot(ParkingSpot parkingSpot) async {
        return await parkingSpotService.createParkingSpot(parkingSpot);
    }
}