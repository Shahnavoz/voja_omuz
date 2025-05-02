abstract class BottomState {
  int currentIndex = 0;

  BottomState(this.currentIndex);
}

class ChangeState extends BottomState {
  ChangeState(int currentIndex) : super(currentIndex);
}
