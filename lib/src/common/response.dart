part of kotc_core;

@JsonSerializable(includeIfNull: false, createToJson: false)
class SimpleResponse {
  final String id;

  SimpleResponse({required this.id});

  factory SimpleResponse.fromJson(json) => _$SimpleResponseFromJson(json);
}
