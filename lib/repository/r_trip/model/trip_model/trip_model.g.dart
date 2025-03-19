// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TripModelImpl _$$TripModelImplFromJson(Map<String, dynamic> json) =>
    _$TripModelImpl(
      id: json['id'] as num?,
      title: json['title'] as String?,
      location: json['location'] as String?,
      price: json['price'] as num?,
      rating: json['rating'] as num?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$TripModelImplToJson(_$TripModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'location': instance.location,
      'price': instance.price,
      'rating': instance.rating,
      'image': instance.image,
    };
