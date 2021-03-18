import 'package:json_annotation/json_annotation.dart';
import 'package:rest_package/model/list_cat_model_image_response.dart';
import 'package:rest_package/model/list_cat_model_weigth_response.dart';


part 'list_cat_response.g.dart';

@JsonSerializable()
class ListCatResponse {
  int adaptability;
  int affection_level;
  String alt_names;
  String cfa_url;
  int child_friendly;
  String country_code;
  String country_codes;
  String description;
  int dog_friendly;
  int energy_level;
  int experimental;
  int grooming;
  int hairless;
  int health_issues;
  int hypoallergenic;
  String id;
  int indoor;
  int intelligence;
  int lap;
  String life_span;
  String name;
  int natural;
  String origin;
  int rare;
  String reference_image_id;
  int rex;
  int shedding_level;
  int short_legs;
  int social_needs;
  int stranger_friendly;
  int suppressed_tail;
  String temperament;
  String vcahospitals_url;
  String vetstreet_url;
  int vocalisation;
  String wikipedia_url;

  
  ListCatModelWeigthResponse weight;
  ListCatModelImageResponse image;
 
  ListCatResponse({
    this.adaptability,
    this.affection_level,
    this.alt_names,
    this.cfa_url,
    this.child_friendly,
    this.country_code,
    this.country_codes,
    this.description,
    this.dog_friendly,
    this.energy_level,
    this.experimental,
    this.grooming,
    this.hairless,
    this.health_issues,
    this.hypoallergenic,
    this.id,
    this.indoor,
    this.intelligence,
    this.lap,
    this.life_span,
    this.name,
    this.natural,
    this.origin,
    this.rare,
    this.reference_image_id,
    this.rex,
    this.shedding_level,
    this.short_legs,
    this.social_needs,
    this.stranger_friendly,
    this.suppressed_tail,
    this.temperament,
    this.vcahospitals_url,
    this.vetstreet_url,
    this.vocalisation,
    this.wikipedia_url,
    this.weight,
    this.image
    

  });

  factory ListCatResponse.fromJson(Map<String, dynamic> json) =>
      _$ListCatResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListCatResponseToJson(this);
}
