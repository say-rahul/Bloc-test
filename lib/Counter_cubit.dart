import 'package:flutter_bloc/flutter_bloc.dart';

class Countercubit extends Cubit<int> {
  Countercubit() : super(0);

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print('State changed: $change');
  }
}
