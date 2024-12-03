import 'package:work_with_bloc/domain/entity/dogs_entity.dart';

abstract class DogsRepository {
  Future<DogsEntity> getDogsImage();
}