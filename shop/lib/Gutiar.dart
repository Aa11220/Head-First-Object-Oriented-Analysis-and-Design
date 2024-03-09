// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'GuitarSpec.dart';

class Guitar {
  String serialNumber;
  double Price;
  GuitarSpec spec;

  Guitar({
    required this.serialNumber,
    required this.Price,
    required this.spec
   
  });
  String get GetserialNumber {
    return serialNumber;
  }

  double get GetPrice {
    return Price;
  }
  GuitarSpec get GetSpec{
    return this.spec;
  }



  set SetserialNumber(String value) {
    serialNumber = value;
  }

  set SetPrice(double value) {
    Price = value;
  }

  set SetSpec(GuitarSpec spec){
    this.spec = spec;
  }


}
