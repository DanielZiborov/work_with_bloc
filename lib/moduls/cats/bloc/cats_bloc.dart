import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_with_bloc/data/repositories/cats_repository.dart';
import 'package:work_with_bloc/domain/entity/cats_entity.dart';

part 'cats_event.dart';
part 'cats_state.dart';

class CatsBloc extends Bloc<CatsEvent, CatsState> {
  CatsBloc({required this.repository}) : super(CatsInitialState()) {
    on<CatsEvent>((event, emit) async{
      emit(CatsLoadingState());
      try {
        final data = await repository.getCatsImage();
        emit(CatsSuccessState(data: data));
      } catch (e) {
        emit(CatsErrorState(error: e.toString()));
      }
    });
  }
  final CatsRepository repository;
}
