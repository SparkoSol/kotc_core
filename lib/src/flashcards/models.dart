part of kotc_core;

@JsonSerializable()
class DeckModel {
  final String? id;
  final String name;
  @JsonKey(name: 'user_id')
  final String? userId;
  @JsonKey(name: 'from_admin')
  final bool fromAdmin;
  @JsonKey(name: 'is_premium')
  final bool isPremium;
  final DateTime? createdAt;

  DeckModel({
    this.id,
    required this.name,
    this.createdAt,
    this.fromAdmin = false,
    this.isPremium = false,
    this.userId,
  });

  factory DeckModel.fromJson(json) => _$DeckModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeckModelToJson(this);

  @override
  bool operator ==(Object other) {
    if (other is DeckModel) {
      return other.id == id;
    }

    return false;
  }

  @override
  int get hashCode => id.hashCode;
}
