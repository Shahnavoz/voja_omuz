abstract class SmoothState {
  int activeIndex;
  SmoothState(this.activeIndex);
}

class ChangeSmoothState extends SmoothState {
  ChangeSmoothState(int activeIndex) : super(activeIndex);
}
