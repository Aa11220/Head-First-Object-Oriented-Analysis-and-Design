import 'package:dogdoor/dog_door.dart';

class RemoteControll {
  DogDoor? _door;
  //Dependency injection but here when you need to use it you should create door class to solve this you can
  /* 
  RemoteControll() {
    // what you need
  }
  set Set_Door(DogDoor door){
   this._door=door;
  }
   */

  RemoteControll(DogDoor door) {
    _door = door;
  }
  void pressButton() {
    print("Pressing the remote control button...");
    if (_door != null) {
      if (_door!.isOpen()) {
        _door!.close();
      } else {
        _door!.open();
      }
    }
  }
}
