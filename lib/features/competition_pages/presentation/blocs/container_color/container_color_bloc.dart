import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/container_color/container_color_event.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/container_color/container_color_state.dart';

List<Map<String, dynamic>> coinCount = [
  {'coinNumbers': 6, 'isSelected': true},
  {'coinNumbers': 12, 'isSelected': false},
  {'coinNumbers': 18, 'isSelected': false},
  {'coinNumbers': 24, 'isSelected': false},
  {'coinNumbers': 35, 'isSelected': false},
  {'coinNumbers': 40, 'isSelected': false},
];

class ContainerColorBloc
    extends Bloc<ContainerColorEvent, ContainerColorState> {
  ContainerColorBloc() : super(ContainerColorState(coinCount)) {
    on<ChangeColorEvent>((event, emit) {

      for (var i = 0; i < coinCount.length; i++) {
        if (i == event.coindIndex) {
          coinCount[i]['isSelected'] = true;
        } else {
          coinCount[i]['isSelected'] = false;
        }
      }

      emit(ContainerColorState(coinCount));
    });
  }
}
