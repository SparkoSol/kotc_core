part of kotc_core;

@JsonSerializable(includeIfNull: false, createFactory: false)
class ReviewRequest {
  ReviewRequest({
    required this.email,
    required this.type,
    required this.feedback,
    required this.appVersion,
    required this.stepsToReproduce,
  });

  final String feedback;
  final String stepsToReproduce;
  final String email;
  final String type;
  @JsonKey(name: 'app_version')
  final String appVersion;

  Map<String, dynamic> toJson() => _$ReviewRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, createFactory: false)
class AccountDeletionRequest {
  AccountDeletionRequest({
    required this.email,
    required this.user,
    required this.reason,
  });

  final String reason;
  final String email;
  final String user;

  Map<String, dynamic> toJson() => _$AccountDeletionRequestToJson(this);
}
