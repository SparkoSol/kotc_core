part of kotc_core;

@JsonSerializable(includeIfNull: false)
class UserOverallStats {
  UserOverallStats({
    this.id,
    required this.user,
    this.email,
    required this.name,
    required this.right,
    required this.crown,
    required this.endlessHighScore,
    required this.lost,
    required this.matchCount,
    required this.point,
    required this.qBankHighScore,
    required this.reviewHighScore,
    required this.streak,
    required this.timedHighScore,
    required this.total,
    required this.win,
    required this.wrong,
    required this.boolHighScore,
    this.watchDuration,
    this.lastWatchDate,
    this.referredBy,
    this.referred,
    this.referredByEmail,
    this.referredByName,
    this.onBoarding,
  });

  @JsonKey(name: 'on_boarding')
  OnBoardingModel? onBoarding;
  final String? id;
  final String user;
  String name;
  String? email;
  int total;
  int right;
  int wrong;
  int win;
  int lost;
  @JsonKey(name: 'match_count')
  int matchCount;
  int point;
  int streak;
  int crown;
  @JsonKey(name: 'qbank_high_score')
  int qBankHighScore;
  @JsonKey(name: 'timed_high_score')
  int timedHighScore;
  @JsonKey(name: 'review_high_score')
  int reviewHighScore;
  @JsonKey(name: 'endless_high_score')
  int endlessHighScore;
  @JsonKey(name: 'bool_blitz_high_score')
  int boolHighScore;

  // If user got a trial by any app sharing link
  bool? referred;
  @JsonKey(name: 'referred_by')
  String? referredBy;
  @JsonKey(name: 'referred_by_email')
  String? referredByEmail;
  @JsonKey(name: 'referred_by_name')
  String? referredByName;

  // If user share app link and someone redeemed it
  @JsonKey(name: 'has_promo_trial')
  bool? hasPromoTrial;
  @JsonKey(name: 'has_promo_redeemed')
  bool? hasPromoRedeemed;

  // User's qotd played time
  @JsonKey(name: 'qotd_played')
  String? questionOfTheDayPlayed;
  @JsonKey(name: 'notification_time')
  String? notificationTime;

  // Watch Video duration
  @JsonKey(name: 'last_video_played_seconds')
  int? watchDuration;
  @JsonKey(name: 'last_video_played_date')
  String? lastWatchDate;
  @JsonKey(name: 'exam_date')
  String? examDate;
  @JsonKey(name: 'is_survey')
  bool? isSurvey;

  factory UserOverallStats.fromJson(json) => _$UserOverallStatsFromJson(json);

  Map<String, dynamic> toJson() => _$UserOverallStatsToJson(this);
}

@JsonSerializable(createFactory: false)
class UserStatRequest {
  UserStatRequest({
    required this.subCategories,
    required this.mode,
    required this.user,
  });

  final String user;
  final int mode;
  final List<String> subCategories;

  Map<String, dynamic> toJson() => _$UserStatRequestToJson(this);
}

@JsonSerializable()
class OnBoardingModel {
  @JsonKey(name: 'real_name')
  String? realName;
  // @JsonKey(name: 'user_name')
  // String? userName;
  @JsonKey(name: 'mcat_goal_score')
  int? mcatGoalScore;
  @JsonKey(name: 'mcat_test_date')
  String? mcatTestDate;
  @JsonKey(name: 'is_mcat_taken_before')
  bool? isMcatTakenBefore;
  @JsonKey(name: 'mcat_previous_test_date')
  String? mcatPrevTestDate;
  @JsonKey(name: 'mcat_previous_test_score')
  int? mcatPrevTestScore;
  @JsonKey(name: 'last_practice_score')
  int? lastPracticeScore;
  String? gender;
  @JsonKey(name: 'is_remember_study')
  bool? isRememberStudy;
  @JsonKey(name: 'mcat_daily_study')
  String? mcatDailyStudy;
  int? age;
  @JsonKey(name: 'is_understand_study_habits')
  bool? isUnderstandStudyHabits;
  @JsonKey(name: 'study_habits_importance')
  String? studyHabitsImportance;
  bool commitment;
  @JsonKey(name: 'study_timing')
  String? studyTiming;
  @JsonKey(name: 'study_material')
  List<String>? studyMaterial;
  @JsonKey(name: 'mcat_improvements')
  List<String>? improvements;
  @JsonKey(name: 'last_step')
  Pages? lastStep;
  @JsonKey(name: 'subject_difficulty_ranking')
  final SubjectDifficultyRanking subjectDifficultyRanking;

  OnBoardingModel({
    required this.subjectDifficultyRanking,
    this.lastStep,
    // this.userName,
    this.age,
    this.commitment = false,
    this.gender,
    this.improvements,
    this.isMcatTakenBefore,
    this.isRememberStudy,
    this.isUnderstandStudyHabits,
    this.lastPracticeScore,
    this.mcatDailyStudy,
    this.mcatGoalScore,
    this.mcatPrevTestDate,
    this.mcatPrevTestScore,
    this.mcatTestDate,
    this.realName,
    this.studyHabitsImportance,
    this.studyMaterial,
    this.studyTiming,
  });

  factory OnBoardingModel.fromJson(Map<String, dynamic> json) =>
      _$OnBoardingModelFromJson(json);

  Map<String, dynamic> toJson() => _$OnBoardingModelToJson(this);
}

@JsonSerializable()
class SubjectDifficultyRanking {
  int physics;
  @JsonKey(name: 'behavioral_science')
  int behavioralSciences;
  @JsonKey(name: 'bio_chemistry')
  int bioChemistry;
  int biology;
  @JsonKey(name: 'organic_chemistry')
  int organicChemistry;
  int psychology;

  SubjectDifficultyRanking({
    this.physics = 1,
    this.behavioralSciences = 1,
    this.bioChemistry = 1,
    this.biology = 1,
    this.organicChemistry = 1,
    this.psychology = 1,
  });

  factory SubjectDifficultyRanking.fromJson(Map<String, dynamic> json) =>
      _$SubjectDifficultyRankingFromJson(json);

  Map<String, dynamic> toJson() => _$SubjectDifficultyRankingToJson(this);
}

enum Pages {
  @JsonValue(0)
  namePage,
  @JsonValue(1)
  scoreGoalPage,
  @JsonValue(2)
  genderPage,
  @JsonValue(3)
  rememberMorePage,
  @JsonValue(4)
  rankDifficultSubjectPage,
  @JsonValue(5)
  appUseTimePage,
  @JsonValue(6)
  agePage,
  @JsonValue(7)
  understandStudyHabitsPage,
  @JsonValue(8)
  studyHabitsKnowPage,
  @JsonValue(9)
  contractPage,
  @JsonValue(10)
  congratulationsPage,
  @JsonValue(11)
  weUnderstandPage,
  @JsonValue(12)
  studyTimePage,
  @JsonValue(13)
  studyMaterialPage,
  @JsonValue(14)
  freeTrialWorksPage,
  @JsonValue(15)
  improvementPage
}
