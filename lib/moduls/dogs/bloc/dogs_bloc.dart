import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:work_with_bloc/domain/entity/dogs_entity.dart';

part 'dogs_event.dart';
part 'dogs_state.dart';

class DogsBloc extends Bloc<DogsEvent, DogsState> {
  DogsBloc() : super(DogsLoadingState()) {
    on<DogsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
