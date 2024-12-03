import 'package:dio/dio.dart';
import 'package:work_with_bloc/core/consts/app_consts.dart';
import 'package:work_with_bloc/data/models/dogs_model.dart';
import 'package:work_with_bloc/data/repositories/dogs_repository.dart';
import 'package:work_with_bloc/domain/entity/dogs_entity.dart';

class GetDogsUseCase implements DogsRepository {
  final Dio dio;

  GetDogsUseCase({required this.dio});
  @override
  Future<DogsEntity> getDogsImage() async {
    final response = await dio.get(AppConsts.dogUrl);
    return DogsModel.fromJson(response.data);
  }
}