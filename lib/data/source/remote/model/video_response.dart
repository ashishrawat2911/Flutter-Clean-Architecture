import 'package:json_annotation/json_annotation.dart';

part 'video_response.g.dart';

@JsonSerializable()
class VideosResponse {
  int id;
  @JsonKey(name: "results")
  List<Video> videos;

  VideosResponse(this.id, this.videos);

  factory VideosResponse.fromJson(Map<String, dynamic> json) => _$VideosResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VideosResponseToJson(this);
}

@JsonSerializable()
class Video {
  String id;
  @JsonKey(name: "key")
  String key;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "site")
  String site;
  @JsonKey(name: "size")
  int size;
  @JsonKey(name: "type")
  String type;

  Video(this.id, this.key, this.name, this.site, this.size, this.type);

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);
}
