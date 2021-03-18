// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_cat_model_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCatModelImageResponse _$ListCatModelImageResponseFromJson(
    Map<String, dynamic> json) {
  return ListCatModelImageResponse(
    height: json['height'] as int,
    id: json['id'] as String,
    url: json['url'] as String,
    width: json['width'] as int,
  );
}

Map<String, dynamic> _$ListCatModelImageResponseToJson(
        ListCatModelImageResponse instance) =>
    <String, dynamic>{
      'height': instance.height,
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
    };
