import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  factory UserModel({
    required String id,
    String? email,
    String? defaultAddress,
  }) = _UserModel;
  // User._();

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  // bool get hasAddress => defaultAddress?.isNotEmpty ?? false;
}
