part of kotc_core;

@JsonSerializable(includeIfNull: false, createFactory: false)
class ReviewRequest {
  final String feedback;
  final String stepsToReproduce;
  final String email;
  final String type;

  ReviewRequest({
    required this.email,
    required this.type,
    required this.feedback,
    required this.stepsToReproduce,
  });

  Map<String, dynamic> toJson() => _$ReviewRequestToJson(this);
}

@JsonSerializable(includeIfNull: false, createFactory: false)
class AccountDeletionRequest {
  final String reason;
  final String email;
  final String user;

  AccountDeletionRequest({
    required this.email,
    required this.user,
    required this.reason,
  });

  Map<String, dynamic> toJson() => _$AccountDeletionRequestToJson(this);
}
