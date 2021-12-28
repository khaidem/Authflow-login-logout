// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newsfeed.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsfeedModle _$NewsfeedModleFromJson(Map<String, dynamic> json) =>
    NewsfeedModle(
      category: json['category'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$NewsfeedModleToJson(NewsfeedModle instance) =>
    <String, dynamic>{
      'category': instance.category,
      'data': instance.data.map((e) => e.toJson()).toList(),
      'success': instance.success,
    };

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      author: json['author'] as String,
      content: json['content'] as String,
      date: json['date'] as String,
      imageUrl: json['imageUrl'] as String,
      readMoreUrl: json['readMoreUrl'] as String?,
      time: json['time'] as String,
      title: json['title'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'author': instance.author,
      'content': instance.content,
      'date': instance.date,
      'imageUrl': instance.imageUrl,
      'readMoreUrl': instance.readMoreUrl,
      'time': instance.time,
      'title': instance.title,
      'url': instance.url,
    };
