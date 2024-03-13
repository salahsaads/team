import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;

  int teamBPoints = 0;
  void IncrementPoint(String s, int n) {
    if (s == 'A') {
      teamAPoints += n;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += n;
      emit(CounterBIncrementState());
    }
  }

  void Reset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterAIncrementState());

    emit(CounterBIncrementState());
  }
}
