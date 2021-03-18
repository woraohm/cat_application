import 'package:json_annotation/json_annotation.dart';


part 'list_cat_model_weigth_response.g.dart';

@JsonSerializable()
class ListCatModelWeigthResponse {
  String imperial;
  String metric;

  

  ListCatModelWeigthResponse({
    this.imperial,
    this.metric
  });

   factory ListCatModelWeigthResponse.fromJson(Map<String, dynamic> json) => _$ListCatModelWeigthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListCatModelWeigthResponseToJson(this);
}
