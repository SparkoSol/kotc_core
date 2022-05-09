// part of kotc_core;
//
// @JsonSerializable(includeIfNull: false, createToJson: false)
// class BannersResponse {
//   final String id;
//   final String image;
//   final int placementPage;
//   final int placementPosition;
//   final int duration;
//   final BannerAction action;
//   final String link;
//
//   BannersResponse({
//     required this.id,
//     required this.image,
//     required this.action,
//     required this.duration,
//     required this.link,
//     required this.placementPage,
//     required this.placementPosition,
//   });
//
//   factory BannersResponse.fromJson(json) => _$BannersResponseFromJson(json);
// }
//
// enum BannerAction {
//   @JsonValue(1)
//   showSubscriptionPackages,
//   @JsonValue(2)
//   playEndlessMode,
//   @JsonValue(3)
//   playAdaptiveQBank,
//   @JsonValue(4)
//   spinForRandomDiscount,
//   @JsonValue(5)
//   playMultiplayer,
//   @JsonValue(6)
//   playReviewMode,
//   @JsonValue(7)
//   linkInstitution,
//   @JsonValue(8)
//   playTimedMode,
//   @JsonValue(9)
//   shareFeedback,
//   @JsonValue(10)
//   openLink,
// }
