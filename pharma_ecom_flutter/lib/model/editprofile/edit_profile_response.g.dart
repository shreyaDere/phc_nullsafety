// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EditProfileResponse> _$editProfileResponseSerializer =
    new _$EditProfileResponseSerializer();
Serializer<GetProfileData> _$getProfileDataSerializer =
    new _$GetProfileDataSerializer();
Serializer<User> _$userSerializer = new _$UserSerializer();

class _$EditProfileResponseSerializer
    implements StructuredSerializer<EditProfileResponse> {
  @override
  final Iterable<Type> types = const [
    EditProfileResponse,
    _$EditProfileResponse
  ];
  @override
  final String wireName = 'EditProfileResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, EditProfileResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(GetProfileData)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  EditProfileResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EditProfileResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(GetProfileData)) as GetProfileData);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GetProfileDataSerializer
    implements StructuredSerializer<GetProfileData> {
  @override
  final Iterable<Type> types = const [GetProfileData, _$GetProfileData];
  @override
  final String wireName = 'GetProfileData';

  @override
  Iterable<Object> serialize(Serializers serializers, GetProfileData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(User)));
    }
    if (object.orders != null) {
      result
        ..add('orders')
        ..add(serializers.serialize(object.orders,
            specifiedType: const FullType(int)));
    }
    if (object.favouriteProduct != null) {
      result
        ..add('favourite_product')
        ..add(serializers.serialize(object.favouriteProduct,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GetProfileData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetProfileDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
        case 'orders':
          result.orders = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'favourite_product':
          result.favouriteProduct = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.userId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(String)));
    }
    if (object.firstName != null) {
      result
        ..add('first_name')
        ..add(serializers.serialize(object.firstName,
            specifiedType: const FullType(String)));
    }
    if (object.lastName != null) {
      result
        ..add('last_name')
        ..add(serializers.serialize(object.lastName,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.language != null) {
      result
        ..add('language')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(String)));
    }
    if (object.dob != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(object.dob,
            specifiedType: const FullType(String)));
    }
    if (object.profilePicture != null) {
      result
        ..add('profile_picture')
        ..add(serializers.serialize(object.profilePicture,
            specifiedType: const FullType(String)));
    }
    if (object.phoneNumber != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phoneNumber,
            specifiedType: const FullType(String)));
    }
    if (object.rewardPoints != null) {
      result
        ..add('rewardPoints')
        ..add(serializers.serialize(object.rewardPoints,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'profile_picture':
          result.profilePicture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rewardPoints':
          result.rewardPoints = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$EditProfileResponse extends EditProfileResponse {
  @override
  final int status;
  @override
  final GetProfileData data;
  @override
  final String message;

  factory _$EditProfileResponse(
          [void Function(EditProfileResponseBuilder) updates]) =>
      (new EditProfileResponseBuilder()..update(updates)).build();

  _$EditProfileResponse._({this.status, this.data, this.message}) : super._();

  @override
  EditProfileResponse rebuild(
          void Function(EditProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditProfileResponseBuilder toBuilder() =>
      new EditProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditProfileResponse &&
        status == other.status &&
        data == other.data &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, status.hashCode), data.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EditProfileResponse')
          ..add('status', status)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class EditProfileResponseBuilder
    implements Builder<EditProfileResponse, EditProfileResponseBuilder> {
  _$EditProfileResponse _$v;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  GetProfileDataBuilder _data;
  GetProfileDataBuilder get data =>
      _$this._data ??= new GetProfileDataBuilder();
  set data(GetProfileDataBuilder data) => _$this._data = data;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  EditProfileResponseBuilder();

  EditProfileResponseBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _data = _$v.data?.toBuilder();
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditProfileResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EditProfileResponse;
  }

  @override
  void update(void Function(EditProfileResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EditProfileResponse build() {
    _$EditProfileResponse _$result;
    try {
      _$result = _$v ??
          new _$EditProfileResponse._(
              status: status, data: _data?.build(), message: message);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EditProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetProfileData extends GetProfileData {
  @override
  final User user;
  @override
  final int orders;
  @override
  final int favouriteProduct;

  factory _$GetProfileData([void Function(GetProfileDataBuilder) updates]) =>
      (new GetProfileDataBuilder()..update(updates)).build();

  _$GetProfileData._({this.user, this.orders, this.favouriteProduct})
      : super._();

  @override
  GetProfileData rebuild(void Function(GetProfileDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProfileDataBuilder toBuilder() =>
      new GetProfileDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProfileData &&
        user == other.user &&
        orders == other.orders &&
        favouriteProduct == other.favouriteProduct;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, user.hashCode), orders.hashCode),
        favouriteProduct.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetProfileData')
          ..add('user', user)
          ..add('orders', orders)
          ..add('favouriteProduct', favouriteProduct))
        .toString();
  }
}

class GetProfileDataBuilder
    implements Builder<GetProfileData, GetProfileDataBuilder> {
  _$GetProfileData _$v;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  int _orders;
  int get orders => _$this._orders;
  set orders(int orders) => _$this._orders = orders;

  int _favouriteProduct;
  int get favouriteProduct => _$this._favouriteProduct;
  set favouriteProduct(int favouriteProduct) =>
      _$this._favouriteProduct = favouriteProduct;

  GetProfileDataBuilder();

  GetProfileDataBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _orders = _$v.orders;
      _favouriteProduct = _$v.favouriteProduct;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetProfileData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GetProfileData;
  }

  @override
  void update(void Function(GetProfileDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetProfileData build() {
    _$GetProfileData _$result;
    try {
      _$result = _$v ??
          new _$GetProfileData._(
              user: _user?.build(),
              orders: orders,
              favouriteProduct: favouriteProduct);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetProfileData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$User extends User {
  @override
  final String userId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String language;
  @override
  final String gender;
  @override
  final String dob;
  @override
  final String profilePicture;
  @override
  final String phoneNumber;
  @override
  final double rewardPoints;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.userId,
      this.firstName,
      this.lastName,
      this.email,
      this.language,
      this.gender,
      this.dob,
      this.profilePicture,
      this.phoneNumber,
      this.rewardPoints})
      : super._();

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        userId == other.userId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        language == other.language &&
        gender == other.gender &&
        dob == other.dob &&
        profilePicture == other.profilePicture &&
        phoneNumber == other.phoneNumber &&
        rewardPoints == other.rewardPoints;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, userId.hashCode),
                                        firstName.hashCode),
                                    lastName.hashCode),
                                email.hashCode),
                            language.hashCode),
                        gender.hashCode),
                    dob.hashCode),
                profilePicture.hashCode),
            phoneNumber.hashCode),
        rewardPoints.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('userId', userId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('language', language)
          ..add('gender', gender)
          ..add('dob', dob)
          ..add('profilePicture', profilePicture)
          ..add('phoneNumber', phoneNumber)
          ..add('rewardPoints', rewardPoints))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _dob;
  String get dob => _$this._dob;
  set dob(String dob) => _$this._dob = dob;

  String _profilePicture;
  String get profilePicture => _$this._profilePicture;
  set profilePicture(String profilePicture) =>
      _$this._profilePicture = profilePicture;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  double _rewardPoints;
  double get rewardPoints => _$this._rewardPoints;
  set rewardPoints(double rewardPoints) => _$this._rewardPoints = rewardPoints;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _userId = _$v.userId;
      _firstName = _$v.firstName;
      _lastName = _$v.lastName;
      _email = _$v.email;
      _language = _$v.language;
      _gender = _$v.gender;
      _dob = _$v.dob;
      _profilePicture = _$v.profilePicture;
      _phoneNumber = _$v.phoneNumber;
      _rewardPoints = _$v.rewardPoints;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result = _$v ??
        new _$User._(
            userId: userId,
            firstName: firstName,
            lastName: lastName,
            email: email,
            language: language,
            gender: gender,
            dob: dob,
            profilePicture: profilePicture,
            phoneNumber: phoneNumber,
            rewardPoints: rewardPoints);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
