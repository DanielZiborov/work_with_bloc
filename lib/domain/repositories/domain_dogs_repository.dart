import 'package:work_with_bloc/data/repositories/dogs_repository.dart';
import 'package:work_with_bloc/domain/entity/dogs_entity.dart';
import 'package:work_with_bloc/domain/use_cases/get_dogs_use_case.dart';

class DomainDogsRepository implements DogsRepository {
  final GetDogsUseCase getDogsUseCase;

  DomainDogsRepository({required this.getDogsUseCase});

  @override
  Future<DogsEntity> getDogsImage() async {
    return await getDogsUseCase.getDogsImage();
  }
}
