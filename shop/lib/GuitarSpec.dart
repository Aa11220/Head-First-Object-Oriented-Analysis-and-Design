import 'EnhancedEnums/Type_Enum.dart';
import 'EnhancedEnums/builder_enum.dart';
import 'EnhancedEnums/wood_enum.dart';

/// When any thing change here you edit the shop and inventory but as good  practice, you need the changes of this class do not effect on other code (adding numStrings)
/// so we should ues (delegation: The act of one object forwarding an operation to another object, to be performed on behalf of the first object.) like fromjson and tojson in dataclasses
class GuitarSpec {
  Builders Builder;
  String modle;
  Types type;
  Woods backwood;
  Woods topwood;
  int numStrings;

  GuitarSpec(
      {required this.Builder,
      required this.modle,
      required this.type,
      required this.backwood,
      required this.topwood,
      required this.numStrings});

  Builders get GetBuilder {
    return Builder;
  }

  String get Getmodle {
    return modle;
  }

  Types get Gettype {
    return this.type;
  }

  Woods get Getbackwood {
    return this.backwood;
  }

  Woods get Gettopwood {
    return topwood;
  }

  int get GetnumStrings {
    return numStrings;
  }

  set SetBuilder(Builders value) {
    Builder = value;
  }

  set Setmodle(String value) {
    modle = value;
  }

  set Settype(Types value) {
    type = value;
  }

  set Setbackwood(Woods value) {
    backwood = value;
  }

  set Settopwood(Woods value) {
    topwood = value;
  }

  set SetNumStrings(int value) {
    numStrings = value;
  }

  //delegation we need method to compare two instruments
  bool Match(GuitarSpec other) {
    if (this.GetBuilder != other.GetBuilder) {
      return false;
    }
    if (this.Getmodle != other.Getmodle) {
      return false;
    }
    if (this.Getbackwood != other.Getbackwood) {
      return false;
    }
    if (this.Gettopwood != other.Gettopwood) {
      return false;
    }
    if (this.Gettype != other.Gettype) {
      return false;
    }
    if (this.GetnumStrings != other.GetnumStrings) {
      return false;
    }
    return true;
  }
}
