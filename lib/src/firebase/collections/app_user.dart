part of kotc_core;

///
@JsonSerializable()
class AppUser {
  const AppUser({
    required this.id,
    required this.name,
    required this.email,
  });

  final String id;
  final String name;
  final String email;

  Map<String, dynamic> toJson() => _$AppUserToJson(this);

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}
