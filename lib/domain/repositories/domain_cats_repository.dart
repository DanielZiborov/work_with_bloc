import 'package:work_with_bloc/data/repositories/cats_repository.dart';
import 'package:work_with_bloc/domain/entity/cats_entity.dart';
import 'package:work_with_bloc/domain/use_cases/get_cats_use_case.dart';

class DomainCatsRepository implements CatsRepository {
  final GetCatsUseCase getCatsUseCase;

  DomainCatsRepository({required this.getCatsUseCase});

  @override
  Future<CatsEntity> getCatsImage() async {
    return await getCatsUseCase.getCatsImage();
  }
}
