import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_with_bloc/domain/entity/cats_entity.dart';

part 'cats_event.dart';
part 'cats_state.dart';

class CatsBloc extends Bloc<CatsEvent, CatsState> {
  CatsBloc() : super(CatsInitial()) {
    on<CatsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
