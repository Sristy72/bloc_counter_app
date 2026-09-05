import 'package:equatable/equatable.dart';

abstract class CounterState {

}
class CounterInitial extends CounterState{
  final int counter;
  CounterInitial(
    this.counter
);
}
class CounterUpdate extends CounterState{
  final int counter;
  CounterUpdate(
    this.counter
);
}