import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/drop_down/drop_down_event.dart';
import 'package:job_project/features/competition_pages/presentation/blocs/drop_down/drop_down_state.dart';

class DropDownBloc extends Bloc<DropDownEvent,ShowDropDownListState>{
  DropDownBloc():super(ShowDropDownListState(false)){
    on<ShowDropListEvent>((event,emit)
    {
      emit(ShowDropDownListState(event.isDropDownOpened));
    });
  }
}