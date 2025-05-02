abstract class DropDownEvent {}

class ShowDropListEvent extends DropDownEvent {
  bool isDropDownOpened;
  ShowDropListEvent(this.isDropDownOpened);
}
