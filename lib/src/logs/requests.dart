part of kotc_core;

@JsonSerializable(includeIfNull: false, createFactory: false)
class LogRequest {
  final String level;
  final String message;
  final String platform;

  LogRequest({
    required this.message,
    required this.level,
    required this.platform,
  });

  Map<String, dynamic> toJson() => _$LogRequestToJson(this);
}
