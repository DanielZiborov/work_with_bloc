import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:work_with_bloc/data/repositories/dogs_repository.dart';
import 'package:work_with_bloc/domain/entity/dogs_entity.dart';

part 'dogs_event.dart';
part 'dogs_state.dart';

class DogsBloc extends Bloc<DogsEvent, DogsState> {
  DogsBloc({required this.repository}) : super(DogsInitialState()) {
    on<GetDogsImageEvent>(
      (event, emit) async {
        emit(DogsLoadingState());
        try {
          final DogsEntity data = await repository.getDogsImage();
          emit(DogsSuccessState(data: data));
        } catch (e) {
          emit(
            DogsErrorState(
              errorText: e.toString(),
            ),
          );
        }
      },
    );
  }
  final DogsRepository repository;
}
