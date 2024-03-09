import 'package:shop/EnhancedEnums/Type_Enum.dart';
import 'package:shop/EnhancedEnums/builder_enum.dart';
import 'package:shop/EnhancedEnums/wood_enum.dart';
import 'package:shop/GuitarSpec.dart';
import 'package:shop/Gutiar.dart';
import 'package:shop/Inventory.dart';

void main(List<String> arguments) {
  final specc = GuitarSpec(
      numStrings: 12,
      Builder: Builders.OLSON,
      modle: "modle1",
      type: Types.ACOUSTIC,
      backwood: Woods.SITKA,
      topwood: Woods.CEDAR);
  Inventory inventory = Inventory();
  _initializeInventory(inventory);
  Guitar whatErinLikes = Guitar(
    serialNumber: "1",
    Price: 12.5,
    spec: specc,
  );
  List<Guitar> guitars = inventory.searchForGuitar(whatErinLikes);
  if (guitars.isEmpty) {
    print("Sorry, Erin, we have nothing for you.");
  } else {
    for (var guitar in guitars) {
      final spec = guitar.spec;
      print(
          "*--------------------------------------------------------------------*");
      print(
          "Erin, you might like this ${spec.GetBuilder} ${spec.Getmodle} ${spec.Gettype} guitar:\n ${spec.Getbackwood} back and sides,\n ${spec.Gettopwood} top.\n You can have it for only ${guitar.GetPrice}!");
    }
  }
}

_initializeInventory(Inventory inventory) {
  inventory.addGuitar("1", 12.5, Builders.OLSON, "modle1", Types.ACOUSTIC,
      Woods.SITKA, Woods.CEDAR, 12);
}
