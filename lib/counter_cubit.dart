import 'package:basketball_counter_app/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit <CounterState> {
   CounterCubit() : super (TeamACounterState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void increamentTeamCount({required String team, required int points}){
    if(team == 'Team A'){
      teamAPoints += points;
      emit(TeamACounterState());
    }
    else{
      teamBPoints+= points;
      emit(TeamBCounterState());
    }
  }

  void reset(){
     teamAPoints = 0;
     teamBPoints = 0;
      emit(TeamACounterState());
      emit(TeamBCounterState());
  }
}