import 'package:dogdoor/dog_door.dart';
import 'package:dogdoor/remote_control.dart';

void main(List<String> arguments) {
  final dogdoor = DogDoor();
  final remotecontroll = RemoteControll(dogdoor);
  print("Fido barks to go outside...");
  remotecontroll.pressButton();
  print("\nFido has gone outside...");
  remotecontroll.pressButton();
  print("\nFido's all done...");
  remotecontroll.pressButton();
  print("\nFido's back inside...");
  remotecontroll.pressButton();
}
