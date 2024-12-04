import 'package:dio/dio.dart';
import 'package:work_with_bloc/core/consts/app_consts.dart';
import 'package:work_with_bloc/data/models/cats_model.dart';
import 'package:work_with_bloc/data/repositories/cats_repository.dart';
import 'package:work_with_bloc/domain/entity/cats_entity.dart';

class GetCatsUseCase implements CatsRepository{
  final Dio dio;

  GetCatsUseCase({required this.dio});

  @override
  Future<CatsEntity> getCatsImage() async {
    final response = await dio.get(AppConsts.catUrl);
    return CatsModel.fromJsonListOneObject(response.data);
  }
}