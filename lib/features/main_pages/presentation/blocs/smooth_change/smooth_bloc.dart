import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_project/features/main_pages/presentation/blocs/smooth_change/smooth_event.dart';
import 'package:job_project/features/main_pages/presentation/blocs/smooth_change/smooth_state.dart';

class SmoothBloc extends Bloc<SmoothEvent, SmoothState> {
  SmoothBloc() : super(ChangeSmoothState(0)) {
    on<ChangePositionEvent>((event, emit) {
      emit(ChangeSmoothState(event.index));
    });
  }
}
