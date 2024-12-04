import 'package:work_with_bloc/domain/entity/cats_entity.dart';

class CatsModel extends CatsEntity {
  CatsModel({
    required super.id,
    required super.url,
    required super.width,
    required super.height,
  });

  CatsModel.fromJson(Map<String, dynamic> json)
      : super(
          id: json['id'],
          url: json['url'],
          width: json['width'],
          height: json['height'],
        );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['url'] = url;
    data['width'] = width;
    data['height'] = height;
    return data;
  }
}
