// GENERATED CODE - DO NOT MODIFY BY HAND

part of kotc_core;

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryWithCountResponseAdapter
    extends TypeAdapter<CategoryWithCountResponse> {
  @override
  final int typeId = 4;

  @override
  CategoryWithCountResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryWithCountResponse(
      name: fields[0] as String,
      count: fields[1] as int,
      subcategories: (fields[2] as List).cast<SubCategoryCountResponse>(),
    );
  }

  @override
  void write(BinaryWriter writer, CategoryWithCountResponse obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(2)
      ..write(obj.subcategories);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryWithCountResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SubCategoryCountResponseAdapter
    extends TypeAdapter<SubCategoryCountResponse> {
  @override
  final int typeId = 5;

  @override
  SubCategoryCountResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubCategoryCountResponse(
      name: fields[0] as String,
      count: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, SubCategoryCountResponse obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubCategoryCountResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StagesModelAdapter extends TypeAdapter<StagesModel> {
  @override
  final int typeId = 2;

  @override
  StagesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StagesModel(
      stage: fields[0] as Stages,
      achievements: (fields[1] as List).cast<AchievementModel>(),
      isActive: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, StagesModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.stage)
      ..writeByte(1)
      ..write(obj.achievements)
      ..writeByte(2)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StagesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AchievementModelAdapter extends TypeAdapter<AchievementModel> {
  @override
  final int typeId = 0;

  @override
  AchievementModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AchievementModel(
      id: fields[0] as String,
      name: fields[1] as String,
      status: fields[2] as bool,
      description: fields[3] as String,
      progress: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, AchievementModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.status)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.progress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AchievementModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AchievementsStatsModelAdapter
    extends TypeAdapter<AchievementsStatsModel> {
  @override
  final int typeId = 3;

  @override
  AchievementsStatsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AchievementsStatsModel(
      dateTime: fields[4] as String,
      category: fields[2] as String,
      questionId: fields[0] as String,
      isCorrect: fields[1] as bool,
      subCategory: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, AchievementsStatsModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.questionId)
      ..writeByte(1)
      ..write(obj.isCorrect)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.subCategory)
      ..writeByte(4)
      ..write(obj.dateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AchievementsStatsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StagesAdapter extends TypeAdapter<Stages> {
  @override
  final int typeId = 1;

  @override
  Stages read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Stages.basic;
      case 1:
        return Stages.intermediate;
      case 2:
        return Stages.pro;
      default:
        return Stages.basic;
    }
  }

  @override
  void write(BinaryWriter writer, Stages obj) {
    switch (obj) {
      case Stages.basic:
        writer.writeByte(0);
        break;
      case Stages.intermediate:
        writer.writeByte(1);
        break;
      case Stages.pro:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StagesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FactsResponseAdapter extends TypeAdapter<FactsResponse> {
  @override
  final int typeId = 20;

  @override
  FactsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FactsResponse(
      id: fields[0] as String,
      createdAt: fields[3] as String,
      active: fields[2] as bool,
      fact: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FactsResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.fact)
      ..writeByte(2)
      ..write(obj.active)
      ..writeByte(3)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FactsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionOfTheDay _$QuestionOfTheDayFromJson(Map<String, dynamic> json) =>
    QuestionOfTheDay(
      id: json['id'] as String,
      updatedAt: json['updatedAt'] as String,
      createdAt: json['createdAt'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionModel.fromJson(e))
          .toList(),
    );

BookMarkResponse _$BookMarkResponseFromJson(Map<String, dynamic> json) =>
    BookMarkResponse(
      id: json['id'] as String,
      user: json['user'] as String,
      questions:
          (json['questions'] as List<dynamic>).map((e) => e as String).toList(),
    );

CategoryWithCountResponse _$CategoryWithCountResponseFromJson(
        Map<String, dynamic> json) =>
    CategoryWithCountResponse(
      name: json['name'] as String,
      count: json['count'] as int,
      subcategories: (json['subcategories'] as List<dynamic>)
          .map((e) => SubCategoryCountResponse.fromJson(e))
          .toList(),
    );

SubCategoryCountResponse _$SubCategoryCountResponseFromJson(
        Map<String, dynamic> json) =>
    SubCategoryCountResponse(
      name: json['name'] as String,
      count: json['count'] as int,
    );

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) =>
    QuestionModel(
      category: SubCategory.fromJson(json['category']),
      id: json['id'] as String,
      answer: json['answer'] as int,
      createdAt: json['createdAt'] as String?,
      explanation: json['explanation'] as String,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      pdfs: (json['pdfs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      htmlExplanation: json['htmlExplanation'] as String?,
      htmlStatement: json['htmlStatement'] as String?,
      statement: json['statement'] as String,
      subCategory: SubCategory.fromJson(json['subCategory']),
      type: json['type'] as String,
      updatedAt: json['updatedAt'] as String?,
      videos:
          (json['videos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      percentage: (json['percentage'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$QuestionModelToJson(QuestionModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'answer': instance.answer,
    'type': instance.type,
    'statement': instance.statement,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('htmlStatement', instance.htmlStatement);
  writeNotNull('options', instance.options);
  val['category'] = instance.category;
  val['subCategory'] = instance.subCategory;
  val['explanation'] = instance.explanation;
  writeNotNull('htmlExplanation', instance.htmlExplanation);
  writeNotNull('images', instance.images);
  writeNotNull('videos', instance.videos);
  writeNotNull('pdfs', instance.pdfs);
  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('updatedAt', instance.updatedAt);
  writeNotNull('percentage', instance.percentage);
  return val;
}

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) => SubCategory(
      id: json['id'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SubCategoryToJson(SubCategory instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

Map<String, dynamic> _$QuestionsRequestToJson(QuestionsRequest instance) =>
    <String, dynamic>{
      'questions': instance.questions,
    };

Map<String, dynamic> _$ToggleRequestToJson(ToggleRequest instance) =>
    <String, dynamic>{
      'user': instance.user,
      'question': instance.question,
    };

Map<String, dynamic> _$ContributeQuestionsRequestToJson(
        ContributeQuestionsRequest instance) =>
    <String, dynamic>{
      'status': instance.status,
      'answer': instance.answer,
      'type': instance.type,
      'statement': instance.statement,
      'user': instance.user,
      'email': instance.email,
      'options': instance.options,
      'category': instance.category,
      'subCategory': instance.subCategory,
      'explanation': instance.explanation,
    };

Map<String, dynamic> _$FlaggedQuestionRequestToJson(
        FlaggedQuestionRequest instance) =>
    <String, dynamic>{
      'question_id': instance.questionId,
      'reason': instance.reason,
      'user': instance.userId,
      'user_data': instance.userData,
    };

Map<String, dynamic> _$FlaggedUserDataToJson(FlaggedUserData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      name: json['name'] as String,
      subCategories: (json['subCategories'] as List<dynamic>)
          .map((e) => SubCategory.fromJson(e))
          .toList(),
    );

ModeScores _$ModeScoresFromJson(Map<String, dynamic> json) => ModeScores(
      id: json['id'] as String?,
      score: json['score'] as int,
      userId: json['user_id'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => ModeAnswers.fromJson(e))
          .toList(),
      type: json['type'] as int,
    );

Map<String, dynamic> _$ModeScoresToJson(ModeScores instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['user_id'] = instance.userId;
  val['score'] = instance.score;
  val['answers'] = instance.answers.map((e) => e.toJson()).toList();
  val['type'] = instance.type;
  return val;
}

ModeAnswers _$ModeAnswersFromJson(Map<String, dynamic> json) => ModeAnswers(
      answer: json['answer'] as int,
      isCorrect: json['is_correct'] as bool,
      categoryId: json['category_id'] as String,
      questionId: json['question_id'] as String,
      subcategoryId: json['subcategory_id'] as String,
    );

Map<String, dynamic> _$ModeAnswersToJson(ModeAnswers instance) =>
    <String, dynamic>{
      'answer': instance.answer,
      'category_id': instance.categoryId,
      'is_correct': instance.isCorrect,
      'question_id': instance.questionId,
      'subcategory_id': instance.subcategoryId,
    };

Map<String, dynamic> _$ReviewRequestToJson(ReviewRequest instance) =>
    <String, dynamic>{
      'feedback': instance.feedback,
      'stepsToReproduce': instance.stepsToReproduce,
      'email': instance.email,
      'type': instance.type,
      'app_version': instance.appVersion,
    };

Map<String, dynamic> _$AccountDeletionRequestToJson(
        AccountDeletionRequest instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'email': instance.email,
      'user': instance.user,
    };

SimpleResponse _$SimpleResponseFromJson(Map<String, dynamic> json) =>
    SimpleResponse(
      id: json['id'] as String,
    );

AppStatusResponse _$AppStatusResponseFromJson(Map<String, dynamic> json) =>
    AppStatusResponse(
      message: json['message'] as String,
      status: json['status'] as int,
      appstoreVersion: json['appstore_version'] as String,
      inReview: json['in_review'] as bool,
      playStoreVersion: json['playstore_version'] as String,
    );

PopupResponse _$PopupResponseFromJson(Map<String, dynamic> json) =>
    PopupResponse(
      title: json['title'] as String,
      endingTime: DateTime.parse(json['endingTime'] as String),
    );

RedeemCodeResponse _$RedeemCodeResponseFromJson(Map<String, dynamic> json) =>
    RedeemCodeResponse(
      code: json['code'] as String,
    );

UserStats _$UserStatsFromJson(Map<String, dynamic> json) => UserStats(
      categoryId: json['categoryId'] as String,
      category: json['category'] as String,
      overallPercentage: (json['overallPercentage'] as num).toDouble(),
      subcategories: (json['subcategories'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

PreviousGame _$PreviousGameFromJson(Map<String, dynamic> json) => PreviousGame(
      id: json['id'] as String,
      type: json['type'] as int,
      userId: json['user_id'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => PreviousGameAnswer.fromJson(e))
          .toList(),
      score: json['score'] as int,
      createdAt: json['createdAt'] as String,
    );

PreviousGameAnswer _$PreviousGameAnswerFromJson(Map<String, dynamic> json) =>
    PreviousGameAnswer(
      answer: json['answer'] as int,
      isCorrect: json['is_correct'] as bool,
      categoryId: json['category_id'] as String,
      questionId: QuestionModel.fromJson(json['question_id']),
      subcategoryId: json['subcategory_id'] as String,
    );

Map<String, dynamic> _$LogRequestToJson(LogRequest instance) =>
    <String, dynamic>{
      'level': instance.level,
      'message': instance.message,
      'platform': instance.platform,
    };

LeaderBoardStat _$LeaderBoardStatFromJson(Map<String, dynamic> json) =>
    LeaderBoardStat(
      user: json['user'] as String,
      score: json['score'] as int,
      name: json['name'] as String,
      win: json['win'] as int,
      lost: json['lost'] as int,
    );

NewLeaderBoardStat _$NewLeaderBoardStatFromJson(Map<String, dynamic> json) =>
    NewLeaderBoardStat(
      position: json['position'] as int,
      leaderboard: (json['leaderboard'] as List<dynamic>)
          .map((e) => LeaderBoardStat.fromJson(e))
          .toList(),
    );

InstitutionalLeaderBoardStat _$InstitutionalLeaderBoardStatFromJson(
        Map<String, dynamic> json) =>
    InstitutionalLeaderBoardStat(
      name: json['name'] as String,
      score: json['score'] as int,
      usersLeaderboard: (json['user-leaderboard'] as List<dynamic>)
          .map((e) => LeaderBoardStat.fromJson(e))
          .toList(),
      win: json['win'] as int,
      lost: json['lost'] as int,
    );

MultiplayerWinsLostResponse _$MultiplayerWinsLostResponseFromJson(
        Map<String, dynamic> json) =>
    MultiplayerWinsLostResponse(
      multiplayerGames: json['multiplayer_games'] as int,
      games: json['games'] as int,
      win: json['win'] as int,
      lost: json['lost'] as int,
    );

CorrectIncorrectResponse _$CorrectIncorrectResponseFromJson(
        Map<String, dynamic> json) =>
    CorrectIncorrectResponse(
      correct: json['correct'] as int,
      incorrect: json['incorrect'] as int,
    );

GamesGraphResponse _$GamesGraphResponseFromJson(Map<String, dynamic> json) =>
    GamesGraphResponse(
      friday: json['friday'] as int,
      monday: json['monday'] as int,
      saturday: json['saturday'] as int,
      sunday: json['sunday'] as int,
      thursday: json['thursday'] as int,
      tuesday: json['tuesday'] as int,
      wednesday: json['wednesday'] as int,
    );

ModeGamesGraphResponse _$ModeGamesGraphResponseFromJson(
        Map<String, dynamic> json) =>
    ModeGamesGraphResponse(
      timed: json['timed'] as int,
      endless: json['endless'] as int,
      booleanBlitz: json['boolean_blitz'] as int,
      reviewed: json['reviewed'] as int,
      qBank: json['qbank'] as int,
    );

SearchUserResponse _$SearchUserResponseFromJson(Map<String, dynamic> json) =>
    SearchUserResponse(
      name: json['name'] as String,
      id: json['id'] as String,
    );

UserOverallStats _$UserOverallStatsFromJson(Map<String, dynamic> json) =>
    UserOverallStats(
      id: json['id'] as String?,
      user: json['user'] as String,
      email: json['email'] as String?,
      name: json['name'] as String,
      right: json['right'] as int,
      crown: json['crown'] as int,
      endlessHighScore: json['endless_high_score'] as int,
      lost: json['lost'] as int,
      matchCount: json['match_count'] as int,
      point: json['point'] as int,
      qBankHighScore: json['qbank_high_score'] as int,
      reviewHighScore: json['review_high_score'] as int,
      streak: json['streak'] as int,
      timedHighScore: json['timed_high_score'] as int,
      total: json['total'] as int,
      win: json['win'] as int,
      wrong: json['wrong'] as int,
      boolHighScore: json['bool_blitz_high_score'] as int,
      watchDuration: json['last_video_played_seconds'] as int?,
      lastWatchDate: json['last_video_played_date'] as String?,
      referredBy: json['referred_by'] as String?,
      referred: json['referred'] as bool?,
      referredByEmail: json['referred_by_email'] as String?,
      referredByName: json['referred_by_name'] as String?,
      onBoarding: json['on_boarding'] == null
          ? null
          : OnBoardingModel.fromJson(
              json['on_boarding'] as Map<String, dynamic>),
      isOnBoardingSkipped: json['onboarding_skipped'] as bool?,
    )
      ..hasPromoTrial = json['has_promo_trial'] as bool?
      ..hasPromoRedeemed = json['has_promo_redeemed'] as bool?
      ..questionOfTheDayPlayed = json['qotd_played'] as String?
      ..notificationTime = json['notification_time'] as String?
      ..isSurvey = json['is_survey'] as bool?;

Map<String, dynamic> _$UserOverallStatsToJson(UserOverallStats instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('on_boarding', instance.onBoarding);
  writeNotNull('id', instance.id);
  val['user'] = instance.user;
  val['name'] = instance.name;
  writeNotNull('email', instance.email);
  val['total'] = instance.total;
  val['right'] = instance.right;
  val['wrong'] = instance.wrong;
  val['win'] = instance.win;
  val['lost'] = instance.lost;
  val['match_count'] = instance.matchCount;
  val['point'] = instance.point;
  val['streak'] = instance.streak;
  val['crown'] = instance.crown;
  val['qbank_high_score'] = instance.qBankHighScore;
  val['timed_high_score'] = instance.timedHighScore;
  val['review_high_score'] = instance.reviewHighScore;
  val['endless_high_score'] = instance.endlessHighScore;
  val['bool_blitz_high_score'] = instance.boolHighScore;
  writeNotNull('referred', instance.referred);
  writeNotNull('referred_by', instance.referredBy);
  writeNotNull('referred_by_email', instance.referredByEmail);
  writeNotNull('referred_by_name', instance.referredByName);
  writeNotNull('has_promo_trial', instance.hasPromoTrial);
  writeNotNull('has_promo_redeemed', instance.hasPromoRedeemed);
  writeNotNull('qotd_played', instance.questionOfTheDayPlayed);
  writeNotNull('notification_time', instance.notificationTime);
  writeNotNull('last_video_played_seconds', instance.watchDuration);
  writeNotNull('last_video_played_date', instance.lastWatchDate);
  writeNotNull('is_survey', instance.isSurvey);
  writeNotNull('onboarding_skipped', instance.isOnBoardingSkipped);
  return val;
}

Map<String, dynamic> _$UserStatRequestToJson(UserStatRequest instance) =>
    <String, dynamic>{
      'user': instance.user,
      'mode': instance.mode,
      'subCategories': instance.subCategories,
    };

OnBoardingModel _$OnBoardingModelFromJson(Map<String, dynamic> json) =>
    OnBoardingModel(
      subjectDifficultyRanking: SubjectDifficultyRanking.fromJson(
          json['subject_difficulty_ranking'] as Map<String, dynamic>),
      lastStep: $enumDecodeNullable(_$PagesEnumMap, json['last_step']),
      age: json['age'] as int?,
      commitment: json['commitment'] as bool? ?? false,
      gender: json['gender'] as String?,
      improvements: (json['mcat_improvements'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isMcatTakenBefore: json['is_mcat_taken_before'] as bool?,
      isRememberStudy: json['is_remember_study'] as bool?,
      isUnderstandStudyHabits: json['is_understand_study_habits'] as bool?,
      lastPracticeScore: json['last_practice_score'] as int?,
      mcatDailyStudy: json['mcat_daily_study'] as String?,
      mcatGoalScore: json['mcat_goal_score'] as int?,
      mcatPrevTestDate: json['mcat_previous_test_date'] as String?,
      mcatPrevTestScore: json['mcat_previous_test_score'] as int?,
      mcatTestDate: json['mcat_test_date'] as String?,
      realName: json['real_name'] as String?,
      studyHabitsImportance: json['study_habits_importance'] as String?,
      studyMaterial: (json['study_material'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      studyTiming: json['study_timing'] as String?,
    );

Map<String, dynamic> _$OnBoardingModelToJson(OnBoardingModel instance) =>
    <String, dynamic>{
      'real_name': instance.realName,
      'mcat_goal_score': instance.mcatGoalScore,
      'mcat_test_date': instance.mcatTestDate,
      'is_mcat_taken_before': instance.isMcatTakenBefore,
      'mcat_previous_test_date': instance.mcatPrevTestDate,
      'mcat_previous_test_score': instance.mcatPrevTestScore,
      'last_practice_score': instance.lastPracticeScore,
      'gender': instance.gender,
      'is_remember_study': instance.isRememberStudy,
      'mcat_daily_study': instance.mcatDailyStudy,
      'age': instance.age,
      'is_understand_study_habits': instance.isUnderstandStudyHabits,
      'study_habits_importance': instance.studyHabitsImportance,
      'commitment': instance.commitment,
      'study_timing': instance.studyTiming,
      'study_material': instance.studyMaterial,
      'mcat_improvements': instance.improvements,
      'last_step': _$PagesEnumMap[instance.lastStep],
      'subject_difficulty_ranking': instance.subjectDifficultyRanking,
    };

const _$PagesEnumMap = {
  Pages.namePage: 0,
  Pages.scoreGoalPage: 1,
  Pages.genderPage: 2,
  Pages.rememberMorePage: 3,
  Pages.rankDifficultSubjectPage: 4,
  Pages.appUseTimePage: 5,
  Pages.agePage: 6,
  Pages.understandStudyHabitsPage: 7,
  Pages.studyHabitsKnowPage: 8,
  Pages.contractPage: 9,
  Pages.congratulationsPage: 10,
  Pages.studyTimePage: 11,
  Pages.studyMaterialPage: 12,
  Pages.improvementPage: 13,
};

SubjectDifficultyRanking _$SubjectDifficultyRankingFromJson(
        Map<String, dynamic> json) =>
    SubjectDifficultyRanking(
      physics: json['physics'] as int? ?? 1,
      behavioralSciences: json['behavioral_science'] as int? ?? 1,
      bioChemistry: json['bio_chemistry'] as int? ?? 1,
      biology: json['biology'] as int? ?? 1,
      organicChemistry: json['organic_chemistry'] as int? ?? 1,
      psychology: json['psychology'] as int? ?? 1,
    );

Map<String, dynamic> _$SubjectDifficultyRankingToJson(
        SubjectDifficultyRanking instance) =>
    <String, dynamic>{
      'physics': instance.physics,
      'behavioral_science': instance.behavioralSciences,
      'bio_chemistry': instance.bioChemistry,
      'biology': instance.biology,
      'organic_chemistry': instance.organicChemistry,
      'psychology': instance.psychology,
    };

InstituteModel _$InstituteModelFromJson(Map<String, dynamic> json) =>
    InstituteModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      alphaTwoCode: json['alpha_two_code'] as String?,
      country: json['country'] as String?,
      domains:
          (json['domains'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isVerified: json['is_verified'] as bool?,
      stateProvince: json['state-province'] as String?,
      webPages: (json['web_pages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$InstituteModelToJson(InstituteModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('alpha_two_code', instance.alphaTwoCode);
  writeNotNull('state-province', instance.stateProvince);
  writeNotNull('country', instance.country);
  writeNotNull('is_verified', instance.isVerified);
  writeNotNull('domains', instance.domains);
  writeNotNull('web_pages', instance.webPages);
  return val;
}

InstituteConfirmationResponse _$InstituteConfirmationResponseFromJson(
        Map<String, dynamic> json) =>
    InstituteConfirmationResponse(
      id: json['id'] as String,
      user: json['user'] as String,
      createdAt: json['createdAt'] as String,
      email: json['email'] as String,
    );

QuizGameModeModel _$QuizGameModeModelFromJson(Map<String, dynamic> json) =>
    QuizGameModeModel(
      id: json['id'] as String?,
      timed: json['is_timed'] as bool,
      name: json['name'] as String,
      user: json['user'] as String,
      questionTypes: json['question_type'] as int,
      tutor: json['is_tutor'] as bool,
      duration: json['duration'] as int,
      selectedCategories: (json['subcategories'] as List<dynamic>)
          .map((e) => SubCategory.fromJson(e))
          .toList(),
      questionCount: json['question_count'] as int?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$QuizGameModeModelToJson(QuizGameModeModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['user'] = instance.user;
  val['name'] = instance.name;
  val['question_type'] = instance.questionTypes;
  val['is_timed'] = instance.timed;
  val['is_tutor'] = instance.tutor;
  val['duration'] = instance.duration;
  val['subcategories'] =
      instance.selectedCategories.map((e) => e.toJson()).toList();
  writeNotNull('question_count', instance.questionCount);
  writeNotNull('createdAt', instance.createdAt);
  return val;
}

QuestionsUsageStat _$QuestionsUsageStatFromJson(Map<String, dynamic> json) =>
    QuestionsUsageStat(
      all: json['all'] as int,
      incorrect: json['incorrect'] as int,
      marked: json['marked'] as int,
      unUsed: json['unused'] as int,
      categories: (json['categories_with_count'] as List<dynamic>)
          .map((e) => CategoriesWithCount.fromJson(e))
          .toList(),
    );

CategoriesWithCount _$CategoriesWithCountFromJson(Map<String, dynamic> json) =>
    CategoriesWithCount(
      category: SubCategory.fromJson(json['category']),
      count: json['count'] as int,
      subCategories: (json['subcategory_with_count'] as List<dynamic>)
          .map((e) => SubCategoriesWithCount.fromJson(e))
          .toList(),
    );

SubCategoriesWithCount _$SubCategoriesWithCountFromJson(
        Map<String, dynamic> json) =>
    SubCategoriesWithCount(
      subcategory: SubCategory.fromJson(json['subcategory']),
      count: json['count'] as int,
    );

QuestionComment _$QuestionCommentFromJson(Map<String, dynamic> json) =>
    QuestionComment(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      reply: (json['reply'] as List<dynamic>?)
          ?.map((e) => QuestionCommentReply.fromJson(e))
          .toList(),
      question: json['question'] == null
          ? null
          : QuestionModel.fromJson(json['question']),
      userId: json['user_id'] as String,
      userName: json['username'] as String,
      comment: json['comment'] as String,
      questionId: json['question_id'] as String,
    );

Map<String, dynamic> _$QuestionCommentToJson(QuestionComment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['question_id'] = instance.questionId;
  writeNotNull('question', instance.question);
  val['user_id'] = instance.userId;
  val['username'] = instance.userName;
  writeNotNull('reply', instance.reply);
  val['comment'] = instance.comment;
  writeNotNull('createdAt', instance.createdAt);
  return val;
}

QuestionCommentReply _$QuestionCommentReplyFromJson(
        Map<String, dynamic> json) =>
    QuestionCommentReply(
      id: json['id'] as String?,
      createdAt: json['createdAt'] as String?,
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$QuestionCommentReplyToJson(
    QuestionCommentReply instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['comment'] = instance.comment;
  writeNotNull('createdAt', instance.createdAt);
  return val;
}

BannersResponse _$BannersResponseFromJson(Map<String, dynamic> json) =>
    BannersResponse(
      id: json['id'] as String,
      image: json['image'] as String,
      action: $enumDecode(_$BannerActionEnumMap, json['action']),
      duration: json['duration'] as int,
      link: json['link'] as String,
      placementPage: json['placementPage'] as int,
      placementPosition: json['placementPosition'] as int,
    );

const _$BannerActionEnumMap = {
  BannerAction.showSubscriptionPackages: 1,
  BannerAction.playEndlessMode: 2,
  BannerAction.playAdaptiveQBank: 3,
  BannerAction.spinForRandomDiscount: 4,
  BannerAction.playMultiplayer: 5,
  BannerAction.playReviewMode: 6,
  BannerAction.linkInstitution: 7,
  BannerAction.playTimedMode: 8,
  BannerAction.shareFeedback: 9,
  BannerAction.openLink: 10,
};

PreferencesModel _$PreferencesModelFromJson(Map<String, dynamic> json) =>
    PreferencesModel(
      id: json['id'] as String?,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      subcategories: (json['subcategories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      preferenceType: json['type'] as int,
      user: json['user_id'] as String,
      showBoolQuestions: json['show_bool_questions'] as bool?,
      showChoicesQuestions: json['show_choices_questions'] as bool?,
      showEasyQuestions: json['show_easy_questions'] as bool?,
      showHardQuestions: json['show_hard_questions'] as bool?,
      showMediumQuestions: json['show_medium_questions'] as bool?,
      tutorMode: json['tutor_mode'] as bool?,
    );

Map<String, dynamic> _$PreferencesModelToJson(PreferencesModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['categories'] = instance.categories;
  val['subcategories'] = instance.subcategories;
  val['type'] = instance.preferenceType;
  val['user_id'] = instance.user;
  writeNotNull('show_bool_questions', instance.showBoolQuestions);
  writeNotNull('show_choices_questions', instance.showChoicesQuestions);
  writeNotNull('show_easy_questions', instance.showEasyQuestions);
  writeNotNull('show_medium_questions', instance.showMediumQuestions);
  writeNotNull('show_hard_questions', instance.showHardQuestions);
  writeNotNull('tutor_mode', instance.tutorMode);
  return val;
}

PassageQuestionResponse _$PassageQuestionResponseFromJson(
        Map<String, dynamic> json) =>
    PassageQuestionResponse(
      id: json['id'] as String,
      heading: json['heading'] as String,
      createdAt: json['createdAt'] as String,
      premium: json['premium'] as bool,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionModel.fromJson(e))
          .toList(),
      passage: json['passage'] as String,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

DeckModel _$DeckModelFromJson(Map<String, dynamic> json) => DeckModel(
      id: json['id'] as String?,
      name: json['name'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      fromAdmin: json['from_admin'] as bool? ?? false,
      isPremium: json['is_premium'] as bool? ?? false,
      userId: json['user_id'] as String?,
      dueCount: json['due_count'] as int?,
      newCount: json['new_count'] as int?,
    );

Map<String, dynamic> _$DeckModelToJson(DeckModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user_id': instance.userId,
      'from_admin': instance.fromAdmin,
      'is_premium': instance.isPremium,
      'due_count': instance.dueCount,
      'new_count': instance.newCount,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

Map<String, dynamic> _$FlashCardRequestToJson(FlashCardRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deck': instance.deck,
      'front_images': instance.frontImage,
      'back_images': instance.backImage,
      'name': instance.name,
      'difficulty': instance.difficulty,
      'user_id': instance.userId,
      'from_admin': instance.fromAdmin,
      'createdAt': instance.createdAt?.toIso8601String(),
      'isTextField': instance.isTextField,
      'frontText': instance.frontText,
      'backText': instance.backText,
    };

Map<String, dynamic> _$DecksFlashCardRequestToJson(
        DecksFlashCardRequest instance) =>
    <String, dynamic>{
      'decks': instance.decks,
    };

FlashCardResponse _$FlashCardResponseFromJson(Map<String, dynamic> json) =>
    FlashCardResponse(
      id: json['id'] as String?,
      name: json['name'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      backImage: (json['back_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      frontImage: (json['front_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      deck: DeckModel.fromJson(json['deck']),
      difficulty: json['difficulty'] as int?,
      userId: json['user_id'] as String?,
      fromAdmin: json['from_admin'] as bool,
      isFirst: json['is_first'] as bool,
      again: FlashCardButtonResponse.fromJson(json['again']),
      easy: FlashCardButtonResponse.fromJson(json['easy']),
      good: FlashCardButtonResponse.fromJson(json['good']),
      hard: FlashCardButtonResponse.fromJson(json['hard']),
      backText: json['backText'] as String,
      frontText: json['frontText'] as String,
      isCloseDeletion: json['ISClosedDeletion'] as bool,
      isTextField: json['isTextField'] as bool,
    );

FlashCardButtonResponse _$FlashCardButtonResponseFromJson(
        Map<String, dynamic> json) =>
    FlashCardButtonResponse(
      value: json['value'] as int,
      unit: json['unit'] as String,
    );

StageSyncModel _$StageSyncModelFromJson(Map<String, dynamic> json) =>
    StageSyncModel(
      stages: (json['stages'] as List<dynamic>)
          .map((e) => StagesModel.fromJson(e))
          .toList(),
      userId: json['userId'] as String,
      stats: (json['stats'] as List<dynamic>)
          .map((e) => AchievementsStatsModel.fromJson(e))
          .toList(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$StageSyncModelToJson(StageSyncModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['stages'] = instance.stages.map((e) => e.toJson()).toList();
  val['userId'] = instance.userId;
  val['stats'] = instance.stats.map((e) => e.toJson()).toList();
  return val;
}

StagesModel _$StagesModelFromJson(Map<String, dynamic> json) => StagesModel(
      stage: $enumDecode(_$StagesEnumMap, json['stage']),
      achievements: (json['achievements'] as List<dynamic>)
          .map((e) => AchievementModel.fromJson(e))
          .toList(),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$StagesModelToJson(StagesModel instance) =>
    <String, dynamic>{
      'stage': _$StagesEnumMap[instance.stage],
      'achievements': instance.achievements.map((e) => e.toJson()).toList(),
      'isActive': instance.isActive,
    };

const _$StagesEnumMap = {
  Stages.basic: 'Basic',
  Stages.intermediate: 'Intermediate',
  Stages.pro: 'Pro',
};

AchievementModel _$AchievementModelFromJson(Map<String, dynamic> json) =>
    AchievementModel(
      id: json['id'] as String,
      name: json['name'] as String,
      status: json['status'] as bool,
      description: json['description'] as String,
      progress: (json['progress'] as num).toDouble(),
    );

Map<String, dynamic> _$AchievementModelToJson(AchievementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'description': instance.description,
      'progress': instance.progress,
    };

AchievementsStatsModel _$AchievementsStatsModelFromJson(
        Map<String, dynamic> json) =>
    AchievementsStatsModel(
      dateTime: json['dateTime'] as String,
      category: json['category'] as String,
      questionId: json['questionId'] as String,
      isCorrect: json['isCorrect'] as bool,
      subCategory: json['subCategory'] as String,
    );

Map<String, dynamic> _$AchievementsStatsModelToJson(
        AchievementsStatsModel instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'isCorrect': instance.isCorrect,
      'category': instance.category,
      'subCategory': instance.subCategory,
      'dateTime': instance.dateTime,
    };

FactsResponse _$FactsResponseFromJson(Map<String, dynamic> json) =>
    FactsResponse(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      active: json['active'] as bool,
      fact: json['fact'] as String,
    );

Map<String, dynamic> _$SurveyRequestToJson(SurveyRequest instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'email': instance.email,
      'user_id': instance.userId,
    };

Map<String, dynamic> _$ExamSurveyRequestToJson(ExamSurveyRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'user_id': instance.userId,
      'questions': instance.questions,
    };

Map<String, dynamic> _$ExamSurveyQuestionRequestToJson(
        ExamSurveyQuestionRequest instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'hashCode': instance.hashCode,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _QuestionsApi implements QuestionsApi {
  _QuestionsApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<QuestionModel>> getQuestions(mode, user) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<QuestionModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/questions/mode/${mode}/user/${user}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => QuestionModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<QuestionModel>> getQuestionFromSub(
      sort, subCategory, questionType) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'sort': sort,
      r'subcategory': subCategory,
      r'question-type': questionType
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<QuestionModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/questions/subcategory',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => QuestionModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<QuestionModel> getOneQuestion(questionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<QuestionModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/questions/${questionId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = QuestionModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> updateOneQuestion(question) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(question.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/questions',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> addQuestionComment(questionId, request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/questions/add-comment/${questionId}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> toggleBookMark(toggleRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(toggleRequest.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/question-bookmarks/toggle-bookmark',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<BookMarkResponse> fetchBookMarks(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BookMarkResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/question-bookmarks/user/${userId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BookMarkResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<int> fetchBookMarksLength(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<int>(_setStreamType<int>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/question-bookmarks/count/user/${userId}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
    return value;
  }

  @override
  Future<QuestionOfTheDay> getQuestionsOfTheDay() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<QuestionOfTheDay>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/question-of-the-day',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = QuestionOfTheDay.fromJson(_result.data!);
    return value;
  }

  @override
  Future<QuestionModel> getMultiplayerQuestion(categoryId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<QuestionModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/questions/category/${categoryId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = QuestionModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<QuestionModel>> getQuestionsFromList(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<QuestionModel>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/question-of-the-day/list',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => QuestionModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<dynamic> addContributeQuestion(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/contributed-questions',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> addFlaggedQuestion(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/flagged-questions',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<bool> getIsFlaggedAccepted(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<bool>(_setStreamType<bool>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(
            _dio.options, '/flagged-questions/confirm-contribution/${userId}',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
    return value;
  }

  @override
  Future<List<CategoryWithCountResponse>> getQuestionCountFromCategory() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<CategoryWithCountResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/questions/subcategory/count',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            CategoryWithCountResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<PreviousGame>> getPreviousGame(userId, mode, page, last) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<PreviousGame>>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options,
                '/questions/games-history/${userId}/${mode}/${last}/${page}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => PreviousGame.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _CategoriesApi implements CategoriesApi {
  _CategoriesApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Category>> getCategories() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<Category>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/categories',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Category.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<SubCategory>> getSubCategories() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<SubCategory>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/subcategories',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => SubCategory.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _ScoresApi implements ScoresApi {
  _ScoresApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<SimpleResponse> addGameModeScores(score) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(score.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SimpleResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/scores',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SimpleResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<UserStats>> getUserStats(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<UserStats>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/questions/stats/user/${userId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => UserStats.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<UserStats>> getGlobalOverallStats() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<UserStats>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/questions/stats/global',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => UserStats.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<int> getHighScore(userId, type) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<int>(_setStreamType<int>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/scores/high-score/${userId}/${type}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _CommonApi implements CommonApi {
  _CommonApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AppStatusResponse> getAppStatus() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AppStatusResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/app-status',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AppStatusResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> sendEmail(event, email) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(
            _dio.options, '/notifications/email?event=${event}&email=${email}',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<PopupResponse> getRandomOffers() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PopupResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/offers/random',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PopupResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> submitReview(review) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(review.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/reviews',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<RedeemCodeResponse> getRedeemCode(productId, offerId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RedeemCodeResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/subscription-offer/${productId}/${offerId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RedeemCodeResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> requestAccountDeletion(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/account-deletion-requests',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<SimpleResponse> uploadImage(file) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.files.add(MapEntry(
        'file',
        MultipartFile.fromFileSync(file.path,
            filename: file.path.split(Platform.pathSeparator).last)));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SimpleResponse>(
            Options(method: 'PUT', headers: _headers, extra: _extra)
                .compose(_dio.options, '/uploads',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SimpleResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _LogsApi implements LogsApi {
  _LogsApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<dynamic> createLog(logRequest) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(logRequest.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/logs',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _UserStatsApi implements UserStatsApi {
  _UserStatsApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserOverallStats> getUserOverallStat(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserOverallStats>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user-stats/${userId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserOverallStats.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> addUserStat(userStat) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userStat.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/user-stats',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> updateUserStat(userStat) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(userStat.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/user-stats',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<List<LeaderBoardStat>> getLeaderBoard(mode) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<LeaderBoardStat>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user-stats/leaderboard/${mode}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => LeaderBoardStat.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<NewLeaderBoardStat> getNewLeaderBoard(mode, userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<NewLeaderBoardStat>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(
                _dio.options, '/user-stats/leaderboard-new/${mode}/${userId}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = NewLeaderBoardStat.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<InstitutionalLeaderBoardStat>> getInstitutionalLeaderBoard(
      mode) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<InstitutionalLeaderBoardStat>>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(
                _dio.options, '/user-stats/institutional-leaderboard/${mode}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            InstitutionalLeaderBoardStat.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<bool> isInTopHundred(mode, userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<bool>(_setStreamType<bool>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/user-stats/top-hundred/${mode}/${userId}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
    return value;
  }

  @override
  Future<MultiplayerWinsLostResponse> getStatWinLost(userId, mode,
      [from, to]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'user': userId,
      r'mode': mode,
      r'from': from,
      r'to': to
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MultiplayerWinsLostResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user-stats/user-dashboard',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MultiplayerWinsLostResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CorrectIncorrectResponse> getStatCorrectIncorrect(userId, mode,
      [from, to]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'user': userId,
      r'mode': mode,
      r'from': from,
      r'to': to
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CorrectIncorrectResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user-stats/user-dashboard',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CorrectIncorrectResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GamesGraphResponse> getWeeklyGamesGraph(userId, mode,
      [from, to]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'user': userId,
      r'mode': mode,
      r'from': from,
      r'to': to
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GamesGraphResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user-stats/user-dashboard',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GamesGraphResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ModeGamesGraphResponse> getGameModesGraph(userId, mode,
      [from, to]) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'user': userId,
      r'mode': mode,
      r'from': from,
      r'to': to
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ModeGamesGraphResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user-stats/user-dashboard',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ModeGamesGraphResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MultiplayerWinsLostResponse> getStatWinLostAll(userId, mode) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'user': userId, r'mode': mode};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MultiplayerWinsLostResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/user-stats/lifetime-user-dashboard-stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MultiplayerWinsLostResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CorrectIncorrectResponse> getStatCorrectIncorrectAll(
      userId, mode) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'user': userId, r'mode': mode};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CorrectIncorrectResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/user-stats/lifetime-user-dashboard-stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CorrectIncorrectResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GamesGraphResponse> getWeeklyGamesGraphAll(userId, mode) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'user': userId, r'mode': mode};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GamesGraphResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/user-stats/lifetime-user-dashboard-stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GamesGraphResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ModeGamesGraphResponse> getGameModesGraphAll(userId, mode) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'user': userId, r'mode': mode};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ModeGamesGraphResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/user-stats/lifetime-user-dashboard-stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ModeGamesGraphResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MultiplayerWinsLostResponse> getStatWinLostCat(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MultiplayerWinsLostResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user-stats/user-dashboard-stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MultiplayerWinsLostResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CorrectIncorrectResponse> getStatCorrectIncorrectCat(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CorrectIncorrectResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user-stats/user-dashboard-stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CorrectIncorrectResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GamesGraphResponse> getWeeklyGamesGraphCat(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GamesGraphResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user-stats/user-dashboard-stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GamesGraphResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ModeGamesGraphResponse> getGameModesGraphCat(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ModeGamesGraphResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user-stats/user-dashboard-stats',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ModeGamesGraphResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<SearchUserResponse>> searchUsersByName(name) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'query': name};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<SearchUserResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user-stats/search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            SearchUserResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _InstitutionsApi implements InstitutionsApi {
  _InstitutionsApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<InstituteConfirmationResponse> instituteConfirmation(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<InstituteConfirmationResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/institute-confirmations/user/${userId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = InstituteConfirmationResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> deleteConfirmation(confirmationId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'DELETE', headers: _headers, extra: _extra)
            .compose(_dio.options, '/institute-confirmations/${confirmationId}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<InstituteModel> findInstitute(domain) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<InstituteModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/institutions/${domain}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = InstituteModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<InstituteModel>> getVerifiedInstitutes(query) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'verified': query};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<InstituteModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/institutions',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => InstituteModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<dynamic> linkInstitute(domain, userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options,
                '/institutions/link-institute-email/${domain}/${userId}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> addInstitute(model) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(model.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/institutions',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _QuizModeApi implements QuizModeApi {
  _QuizModeApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<QuestionsUsageStat> getQuestionUsageStat(userId, mode) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<QuestionsUsageStat>(Options(
                method: 'GET', headers: _headers, extra: _extra)
            .compose(
                _dio.options, '/quiz-games/question-usage/${userId}/${mode}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = QuestionsUsageStat.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<QuizGameModeModel>> getUserQuizzes(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<QuizGameModeModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/quiz-games/user/${userId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            QuizGameModeModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<dynamic> addUserQuiz(quizModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(quizModel.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/quiz-games',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> updateUserQuiz(quizModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(quizModel.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/quiz-games',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> deleteUserQuiz(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'DELETE', headers: _headers, extra: _extra)
            .compose(_dio.options, '/quiz-games/${id}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<List<QuestionModel>> getQuizQuestions(quizId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<QuestionModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/quiz-games/questions/${quizId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => QuestionModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _CommentsApi implements CommentsApi {
  _CommentsApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<QuestionComment>> getComments(questionId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<QuestionComment>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/question-comments/all/${questionId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => QuestionComment.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<QuestionComment>> getUserAllComments(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<QuestionComment>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/question-comments/user/${userId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => QuestionComment.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<dynamic> addComment(comment) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(comment.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/question-comments',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> deleteComment(commentId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'DELETE', headers: _headers, extra: _extra)
            .compose(_dio.options, '/question-comments/${commentId}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _BannersApi implements BannersApi {
  _BannersApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<BannersResponse>> getBannersNew(page, position, platform) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<
        List<BannersResponse>>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            '/banners/page/${page}/position/${position}/platform/${platform}',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => BannersResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<dynamic> logBannerClick(bannerId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options, '/banners/update-click-count/${bannerId}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _PreferencesApi implements PreferencesApi {
  _PreferencesApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PreferencesModel> getPreferences(userId, mode) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PreferencesModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/preferences/user/${userId}/mode/${mode}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PreferencesModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> updatePreference(model) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(model.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/preferences',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> toggleSubCategory(id, subCategoryId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(Options(
            method: 'PATCH', headers: _headers, extra: _extra)
        .compose(_dio.options,
            '/preferences/toggle-sub-category/${id}/subcategory/${subCategoryId}',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _PassagesModeApi implements PassagesModeApi {
  _PassagesModeApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<PassageQuestionResponse>> getPassageGames() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<PassageQuestionResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/passages/game',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            PassageQuestionResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _FlashCardsApi implements FlashCardsApi {
  _FlashCardsApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<FlashCardResponse>> getAllFlashCards(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<FlashCardResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/flashcards/user/${userId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            FlashCardResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<FlashCardResponse>> getDeckFlashCards(deckId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<FlashCardResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/flashcards/deck/${deckId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            FlashCardResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<FlashCardResponse>> getDecksFlashCards(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<FlashCardResponse>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/flashcards/decks',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            FlashCardResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<FlashCardResponse>> getAdminDeckFlashCards(deckId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<FlashCardResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/flashcards/admin/${deckId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            FlashCardResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<dynamic> addFlashCard(flashCard) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(flashCard.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/flashcards',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> updateFlashCard(flashCard) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(flashCard.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/flashcards',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> deleteFlashCard(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'DELETE', headers: _headers, extra: _extra)
            .compose(_dio.options, '/flashcards/${id}',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<FlashCardResponse> updateNextShowTime(flashcardId, difficulty) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        FlashCardResponse>(Options(
            method: 'PUT', headers: _headers, extra: _extra)
        .compose(_dio.options,
            '/flashcards/update-next-time/${flashcardId}/difficulty/${difficulty}',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FlashCardResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SimpleResponse> addDeck(deck) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(deck.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SimpleResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/decks',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SimpleResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> updateDeck(deck) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(deck.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/decks',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<List<DeckModel>> getAllDecks(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<DeckModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/flashcards/decks/user/${userId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => DeckModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<DeckModel>> getAdminDecks() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<DeckModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/decks/admin',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => DeckModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<List<DeckModel>> getNonPremiumAdminDecks() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<DeckModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/decks/admin/non-premium',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => DeckModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _AchievementsApi implements AchievementsApi {
  _AchievementsApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<StageSyncModel?> getUserAchievements(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<StageSyncModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/achievements/${userId}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        _result.data == null ? null : StageSyncModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<dynamic> updateAchievement(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/achievements',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _FactsApi implements FactsApi {
  _FactsApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<FactsResponse>> getFacts() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<FactsResponse>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/facts/active',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => FactsResponse.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

// ignore_for_file: unnecessary_brace_in_string_interps

class _SurveyApi implements SurveyApi {
  _SurveyApi(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<dynamic> addSurveys(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/surveys',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<dynamic> addExamSurvey(request) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch(_setStreamType<dynamic>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/surveys/exam',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
