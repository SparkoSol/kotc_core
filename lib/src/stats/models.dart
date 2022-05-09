// part of kotc_core;
//
// @JsonSerializable(includeIfNull: false)
// class UserOverallStats {
//   UserOverallStats({
//     this.id,
//     required this.user,
//     this.email,
//     required this.name,
//     required this.right,
//     required this.crown,
//     required this.endlessHighScore,
//     required this.lost,
//     required this.matchCount,
//     required this.point,
//     required this.qBankHighScore,
//     required this.reviewHighScore,
//     required this.streak,
//     required this.timedHighScore,
//     required this.total,
//     required this.win,
//     required this.wrong,
//     required this.boolHighScore,
//     this.watchDuration,
//     this.lastWatchDate,
//     this.referredBy,
//     this.referred,
//     this.referredByEmail,
//     this.referredByName,
//   });
//
//   final String? id;
//   final String user;
//   String name;
//   String? email;
//   int total;
//   int right;
//   int wrong;
//   int win;
//   int lost;
//   @JsonKey(name: 'match_count')
//   int matchCount;
//   int point;
//   int streak;
//   int crown;
//   @JsonKey(name: 'qbank_high_score')
//   int qBankHighScore;
//   @JsonKey(name: 'timed_high_score')
//   int timedHighScore;
//   @JsonKey(name: 'review_high_score')
//   int reviewHighScore;
//   @JsonKey(name: 'endless_high_score')
//   int endlessHighScore;
//   @JsonKey(name: 'bool_blitz_high_score')
//   int boolHighScore;
//
//   // If user got a trial by any app sharing link
//   bool? referred;
//   @JsonKey(name: 'referred_by')
//   String? referredBy;
//   @JsonKey(name: 'referred_by_email')
//   String? referredByEmail;
//   @JsonKey(name: 'referred_by_name')
//   String? referredByName;
//
//   // If user share app link and someone redeemed it
//   @JsonKey(name: 'has_promo_trial')
//   bool? hasPromoTrial;
//   @JsonKey(name: 'has_promo_redeemed')
//   bool? hasPromoRedeemed;
//
//   // User's qotd played time
//   @JsonKey(name: 'qotd_played')
//   String? questionOfTheDayPlayed;
//   @JsonKey(name: 'notification_time')
//   String? notificationTime;
//
//   // Watch Video duration
//   @JsonKey(name: 'last_video_played_seconds')
//   int? watchDuration;
//   @JsonKey(name: 'last_video_played_date')
//   String? lastWatchDate;
//
//   factory UserOverallStats.fromJson(json) => _$UserOverallStatsFromJson(json);
//
//   Map<String, dynamic> toJson() => _$UserOverallStatsToJson(this);
// }
//
// @JsonSerializable(createFactory: false)
// class UserStatRequest {
//   UserStatRequest({
//     required this.subCategories,
//     required this.mode,
//     required this.user,
//   });
//
//   final String user;
//   final int mode;
//   final List<String> subCategories;
//
//   Map<String, dynamic> toJson() => _$UserStatRequestToJson(this);
// }
