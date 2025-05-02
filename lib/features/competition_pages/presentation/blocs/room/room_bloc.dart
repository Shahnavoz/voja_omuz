import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/room/room_event.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/room/room_state.dart';

class RoomBloc extends Bloc<RoomEvent,ChangePositionState>{
  RoomBloc():super(ChangePositionState(false)){
    on<ChangePositionEvent>((event,emit)
    {
      emit(ChangePositionState(event.isOpened));
    });
  }
}