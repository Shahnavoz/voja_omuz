import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_project/features/bottom_nav_pages/presentation/blocs/bottom_nav/bottom_event.dart';
import 'package:job_project/features/bottom_nav_pages/presentation/blocs/bottom_nav/bottom_state.dart';

class BottomBloc extends Bloc<BottomEvent, BottomState> {
  BottomBloc() : super(ChangeState(0)) {
    on<ChangePageEvent>((event, emit) {
      emit(ChangeState(event.index));
    });
  }
}
