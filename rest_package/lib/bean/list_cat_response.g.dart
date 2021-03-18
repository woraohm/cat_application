// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_cat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCatResponse _$ListCatResponseFromJson(Map<String, dynamic> json) {
  return ListCatResponse(
    adaptability: json['adaptability'] as int,
    affection_level: json['affection_level'] as int,
    alt_names: json['alt_names'] as String,
    cfa_url: json['cfa_url'] as String,
    child_friendly: json['child_friendly'] as int,
    country_code: json['country_code'] as String,
    country_codes: json['country_codes'] as String,
    description: json['description'] as String,
    dog_friendly: json['dog_friendly'] as int,
    energy_level: json['energy_level'] as int,
    experimental: json['experimental'] as int,
    grooming: json['grooming'] as int,
    hairless: json['hairless'] as int,
    health_issues: json['health_issues'] as int,
    hypoallergenic: json['hypoallergenic'] as int,
    id: json['id'] as String,
    indoor: json['indoor'] as int,
    intelligence: json['intelligence'] as int,
    lap: json['lap'] as int,
    life_span: json['life_span'] as String,
    name: json['name'] as String,
    natural: json['natural'] as int,
    origin: json['origin'] as String,
    rare: json['rare'] as int,
    reference_image_id: json['reference_image_id'] as String,
    rex: json['rex'] as int,
    shedding_level: json['shedding_level'] as int,
    short_legs: json['short_legs'] as int,
    social_needs: json['social_needs'] as int,
    stranger_friendly: json['stranger_friendly'] as int,
    suppressed_tail: json['suppressed_tail'] as int,
    temperament: json['temperament'] as String,
    vcahospitals_url: json['vcahospitals_url'] as String,
    vetstreet_url: json['vetstreet_url'] as String,
    vocalisation: json['vocalisation'] as int,
    wikipedia_url: json['wikipedia_url'] as String,
    weight: json['weight'] == null
        ? null
        : ListCatModelWeigthResponse.fromJson(
            json['weight'] as Map<String, dynamic>),
    image: json['image'] == null
        ? null
        : ListCatModelImageResponse.fromJson(
            json['image'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ListCatResponseToJson(ListCatResponse instance) =>
    <String, dynamic>{
      'adaptability': instance.adaptability,
      'affection_level': instance.affection_level,
      'alt_names': instance.alt_names,
      'cfa_url': instance.cfa_url,
      'child_friendly': instance.child_friendly,
      'country_code': instance.country_code,
      'country_codes': instance.country_codes,
      'description': instance.description,
      'dog_friendly': instance.dog_friendly,
      'energy_level': instance.energy_level,
      'experimental': instance.experimental,
      'grooming': instance.grooming,
      'hairless': instance.hairless,
      'health_issues': instance.health_issues,
      'hypoallergenic': instance.hypoallergenic,
      'id': instance.id,
      'indoor': instance.indoor,
      'intelligence': instance.intelligence,
      'lap': instance.lap,
      'life_span': instance.life_span,
      'name': instance.name,
      'natural': instance.natural,
      'origin': instance.origin,
      'rare': instance.rare,
      'reference_image_id': instance.reference_image_id,
      'rex': instance.rex,
      'shedding_level': instance.shedding_level,
      'short_legs': instance.short_legs,
      'social_needs': instance.social_needs,
      'stranger_friendly': instance.stranger_friendly,
      'suppressed_tail': instance.suppressed_tail,
      'temperament': instance.temperament,
      'vcahospitals_url': instance.vcahospitals_url,
      'vetstreet_url': instance.vetstreet_url,
      'vocalisation': instance.vocalisation,
      'wikipedia_url': instance.wikipedia_url,
      'weight': instance.weight,
      'image': instance.image,
    };
