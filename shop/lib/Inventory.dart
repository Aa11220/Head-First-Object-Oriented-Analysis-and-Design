import 'package:shop/GuitarSpec.dart';

import 'EnhancedEnums/Type_Enum.dart';
import 'EnhancedEnums/builder_enum.dart';
import 'Gutiar.dart';

import 'EnhancedEnums/wood_enum.dart';

class Inventory {
  List<Guitar> inventory = [];

  void addGuitar(String serialNumber, double Price, Builders Builder,
      String modle, Types type, Woods backwood, Woods topwood, int numStrings) {
    Guitar newOne = Guitar(
      serialNumber: serialNumber,
      Price: Price,
      spec: GuitarSpec(
          numStrings: numStrings,
          Builder: Builder,
          modle: modle,
          type: type,
          backwood: backwood,
          topwood: topwood),
    );
    inventory.add(newOne);
  }

  Guitar? getGuitar(String serialNumber) {
    if (inventory.isEmpty) {
      return null;
    } else {
      for (var gitar in inventory) {
        if (gitar.GetserialNumber == serialNumber) {
          return gitar;
        }
        return null;
      }
    }
    return null;
  }

//Error i just write it like that to follow the book
// fixed Errors it now return a guitar
// we Do not use (Price or Serial number) you use other specs of the guitar

  List<Guitar> searchForGuitar(Guitar source) {
    List<Guitar> result = [];
    if (inventory.isEmpty) {
      return result;
    } else {
      for (var gitar in inventory) {
        final _sourcespec = source.spec;
        final _targetspec = gitar.spec;
        // here even when you change any thing you would not change any thing here
        if (_sourcespec.Match(_targetspec)) {
          result.add(gitar);
        }
      }
      return result;
    }
  }
}
