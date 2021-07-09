import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edit_profile_response.g.dart';

abstract class EditProfileResponse
    implements Built<EditProfileResponse, EditProfileResponseBuilder> {
  // fields go here
  @nullable
  int get status;
  @nullable
  GetProfileData get data;
  @nullable
  String get message;

  EditProfileResponse._();

  factory EditProfileResponse([updates(EditProfileResponseBuilder b)]) =
      _$EditProfileResponse;

  static Serializer<EditProfileResponse> get serializer =>
      _$editProfileResponseSerializer;
}

abstract class GetProfileData
    implements Built<GetProfileData, GetProfileDataBuilder> {
  // fields go here
  @nullable
  User get user;
  @nullable
  int get orders;
  @nullable
  @BuiltValueField(wireName: "favourite_product")
  int get favouriteProduct;

  GetProfileData._();

  factory GetProfileData([updates(GetProfileDataBuilder b)]) = _$GetProfileData;

  static Serializer<GetProfileData> get serializer =>
      _$getProfileDataSerializer;
}

abstract class User implements Built<User, UserBuilder> {
  // fields go here
  @nullable
  @BuiltValueField(wireName: "user_id")
  String get userId;
  @nullable
  @BuiltValueField(wireName: "first_name")
  String get firstName;
  @nullable
  @BuiltValueField(wireName: "last_name")
  String get lastName;
  @nullable
  String get email;
  @nullable
  String get language;
  @nullable
  String get gender;
  @nullable
  String get dob;
  @nullable
  @BuiltValueField(wireName: "profile_picture")
  String get profilePicture;
  @nullable
  @BuiltValueField(wireName: "phone_number")
  String get phoneNumber;
  @nullable
  @BuiltValueField(wireName: "rewardPoints")
  double get rewardPoints;

  User._();

  factory User([updates(UserBuilder b)]) = _$User;

  static Serializer<User> get serializer => _$userSerializer;
}
