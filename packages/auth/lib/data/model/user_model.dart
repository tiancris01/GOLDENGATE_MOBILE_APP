import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    @Default('') String id,
    @Default('') String email,
    @Default('') String name,
    @Default('') String profilePictureUrl,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  factory UserModel.fromDoc(DocumentSnapshot userDoc) {
    final data = userDoc.data() as Map<String, dynamic>? ?? {};
    return UserModel(
      id: userDoc.id,
      email: data['email'] ?? '',
      name: data['name'] ?? '',
      profilePictureUrl: data['profilePictureUrl'] ?? '',
    );
  }
}
