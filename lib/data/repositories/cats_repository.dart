import 'package:work_with_bloc/domain/entity/cats_entity.dart';

abstract class CatsRepository {
  Future<CatsEntity> getCatsImage();
}