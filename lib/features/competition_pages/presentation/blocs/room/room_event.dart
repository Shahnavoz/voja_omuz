abstract class RoomEvent {}

class ChangePositionEvent extends RoomEvent {
  bool isOpened;
  ChangePositionEvent(this.isOpened);
}
