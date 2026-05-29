import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_3/bloc/event.dart';
import 'package:project_3/bloc/state.dart';

class LampBloc extends Bloc<LampEvent, LampState> {
  LampBloc() : super(LampState(false)) {
    on<OffEvent>((event, emit) {
      if (state.lamp == true) {
        emit(LampState(false));
      } else {
        emit(LampState(true));
      }
    });
  }
}
