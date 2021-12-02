part of kotc_core;

@JsonSerializable(includeIfNull: false, createToJson: false)
class SimpleResponse {
  final String id;

  SimpleResponse({required this.id});

  factory SimpleResponse.fromJson(json) => _$SimpleResponseFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class AppStatusResponse {
  final int status;
  final String message;

  AppStatusResponse({
    required this.message,
    required this.status,
  });

  factory AppStatusResponse.fromJson(json) => _$AppStatusResponseFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class PopupResponse {
  final String title;
  final DateTime endingTime;

  PopupResponse({required this.title, required this.endingTime});

  factory PopupResponse.fromJson(json) => _$PopupResponseFromJson(json);
}

@JsonSerializable(includeIfNull: false, createToJson: false)
class RedeemCodeResponse {
  final String code;

  RedeemCodeResponse({required this.code});

  factory RedeemCodeResponse.fromJson(json) =>
      _$RedeemCodeResponseFromJson(json);
}
