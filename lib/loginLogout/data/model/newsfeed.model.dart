import 'package:json_annotation/json_annotation.dart';

part 'newsfeed.model.g.dart';

@JsonSerializable(explicitToJson: true)
class NewsfeedModle {
  NewsfeedModle({
    required this.category,
    required this.data,
    required this.success,
  });

  final String category;
  final List<Datum> data;
  final bool success;

  factory NewsfeedModle.fromJson(Map<String, dynamic> json) =>
      _$NewsfeedModleFromJson(json);

  Map<String, dynamic> toJson() => _$NewsfeedModleToJson(this);
}

@JsonSerializable()
class Datum {
  Datum({
    required this.author,
    required this.content,
    required this.date,
    required this.imageUrl,
    required this.readMoreUrl,
    required this.time,
    required this.title,
    required this.url,
  });

  final String author;
  final String content;
  final String date;
  final String imageUrl;
  final String? readMoreUrl;
  final String time;
  final String title;
  final String url;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
