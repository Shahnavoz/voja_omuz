abstract class BottomEvent {}

class ChangePageEvent extends BottomEvent {
  int index;
  ChangePageEvent(this.index);
}
