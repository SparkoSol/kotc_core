class User {

}
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:kotc_core/kotc_core.dart';
//
// class AppUser {
//   final String id;
//   final String? name;
//   final String? email;
//   final String? instituteName;
//   final bool? isPremium;
//   final String? fcmToken;
//   final String? profilePic;
//   final String? bio;
//   final String? deviceId;
//   final int? endlessModeHighScore;
//   final int? adaptiveQbankHighScore;
//   final int? timedModeHighScore;
//   final int? streak;
//   final int? wins;
//   final InstituteModel? institution;
//   final bool? isVerificationPending;
//   final bool? showAds;
//   final bool? isCancelled;
//   final bool? hasCanceledOfferRedeemed;
//
//   const AppUser({
//     this.fcmToken,
//     this.deviceId,
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.instituteName,
//     required this.isPremium,
//     required this.institution,
//     this.adaptiveQbankHighScore,
//     this.endlessModeHighScore,
//     this.timedModeHighScore,
//     this.isVerificationPending,
//     this.streak,
//     this.wins,
//     this.bio,
//     this.profilePic,
//     this.showAds,
//     this.isCancelled,
//     this.hasCanceledOfferRedeemed,
//   });
//
//   factory AppUser.from(DocumentSnapshot obj) {
//     final data = obj.data();
//
//     return AppUser(
//       id: obj.id,
//       name: data?['name'],
//       email: data?['email'],
//       instituteName: data?['institute_name'],
//       fcmToken: data?['token'],
//       deviceId: data?['device_id'],
//       profilePic: data?['profile_pic'],
//       bio: data?['bio'],
//       adaptiveQbankHighScore: data?['adaptive_qbank_high_score'],
//       endlessModeHighScore: data?['endless_mode_high_score'],
//       timedModeHighScore: data?['timed_mode_high_score'],
//       streak: data?['streak'],
//       wins: data?['wins'],
//       isPremium: data?['is_premium'] ?? false,
//       institution: data?['institute'] != null
//           ? InstituteModel.fromJson(data?['institute'])
//           : null,
//       isVerificationPending: data?['is_institution_verification_pending'],
//       showAds: data?['showAds'],
//       isCancelled: data?['is_cancelled'],
//       hasCanceledOfferRedeemed: data?['has_canceled_offer_redeemed'],
//     );
//   }
// }
