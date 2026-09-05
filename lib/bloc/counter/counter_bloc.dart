import 'package:bloc/bloc.dart';
import 'package:bloc_counter_app/bloc/counter/counter_event.dart';
import 'package:bloc_counter_app/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  int count = 0;
  CounterBloc() : super(CounterInitial(0)){
    on<IncrementCounter>((event, emit){
      count ++;
      emit(CounterUpdate(count));
    });

    on<DecrementCounter>((event, emit){
      count--;
      emit(CounterUpdate(count));
    });
  }


}