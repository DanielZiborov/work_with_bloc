import 'package:work_with_bloc/domain/entity/dogs_entity.dart';

class DogsModel extends DogsEntity {
  DogsModel({
    required super.message,
    required super.status,
  });

  DogsModel.fromJson(Map<String, dynamic> json)
      : super(
          message: json['message'],
          status: json['status'],
        );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}
