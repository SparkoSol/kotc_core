part of kotc_core;

@JsonSerializable(includeIfNull: false)
class InstituteModel {
  final String? id;
  final String? name;
  @JsonKey(name: 'alpha_two_code')
  final String? alphaTwoCode;
  @JsonKey(name: 'state-province')
  final String? stateProvince;
  final String? country;
  @JsonKey(name: 'is_verified')
  final bool? isVerified;
  final List<String>? domains;
  @JsonKey(name: 'web_pages')
  final List<String>? webPages;

  InstituteModel({
    this.id,
    required this.name,
    required this.alphaTwoCode,
    required this.country,
    required this.domains,
    required this.isVerified,
    required this.stateProvince,
    required this.webPages,
  });

  factory InstituteModel.fromJson(json) => _$InstituteModelFromJson(json);

  Map<String, dynamic> toJson() => _$InstituteModelToJson(this);
}
