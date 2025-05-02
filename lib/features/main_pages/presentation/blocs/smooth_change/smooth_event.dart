abstract class SmoothEvent {}

class ChangePositionEvent extends SmoothEvent {
  int index;
  ChangePositionEvent(this.index);
}
