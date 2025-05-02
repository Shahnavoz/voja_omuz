import 'dart:ui';

abstract class ContainerColorEvent {}

class ChangeColorEvent extends ContainerColorEvent{
  int coindIndex;
  ChangeColorEvent(this.coindIndex);
}