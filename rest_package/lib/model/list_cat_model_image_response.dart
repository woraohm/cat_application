import 'package:json_annotation/json_annotation.dart';


part 'list_cat_model_image_response.g.dart';

@JsonSerializable()
class ListCatModelImageResponse {
  int height;
  String id;
  String url;
  int width;

  

  ListCatModelImageResponse({
    this.height,
    this.id,
    this.url,
    this.width
  });

   factory ListCatModelImageResponse.fromJson(Map<String, dynamic> json) => _$ListCatModelImageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListCatModelImageResponseToJson(this);
}
