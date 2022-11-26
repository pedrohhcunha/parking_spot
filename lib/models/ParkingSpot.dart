// Create a model to represent a parking spot
// A parking spot has the following information:
// - parkingSpotNumber: String
// - licensePlateCar: String
// - brandCar: String
// - modelCar: String
// - colorCar: String
// - responsibleName: String
// - apartament: String
// - block: String

class ParkingSpot {
  String? id;
  String? parkingSpotNumber;
  String? licensePlateCar;
  String? brandCar;
  String? modelCar;
  String? colorCar;
  String? responsibleName;
  String? apartament;
  String? block;
  String? registrationDate;

  ParkingSpot({
    this.id,
    this.parkingSpotNumber,
    this.licensePlateCar,
    this.brandCar,
    this.modelCar,
    this.colorCar,
    this.responsibleName,
    this.apartament,
    this.block,
    this.registrationDate,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'parkingSpotNumber': parkingSpotNumber,
    'licensePlateCar': licensePlateCar,
    'brandCar': brandCar,
    'modelCar': modelCar,
    'colorCar': colorCar,
    'responsibleName': responsibleName,
    'apartament': apartament,
    'block': block,
    'registrationDate': registrationDate,
  };

  factory ParkingSpot.fromJson(Map<String, dynamic> json) => ParkingSpot(
    id: json['id'],
    parkingSpotNumber: json['parkingSpotNumber'],
    licensePlateCar: json['licensePlateCar'],
    brandCar: json['brandCar'],
    modelCar: json['modelCar'],
    colorCar: json['colorCar'],
    responsibleName: json['responsibleName'],
    apartament: json['apartament'],
    block: json['block'],
    registrationDate: json['registrationDate'],
  );
}