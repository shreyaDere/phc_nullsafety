import 'package:shared_preferences/shared_preferences.dart';

abstract class StorageServiceSharedPreferencesContract {
  Future<String> getToken();
  void saveToken({String token});
  void savePopupHomeFlag({String status});
  void saveUsername({String username});
  void saveEmail({String email});
  void saveProfilePicture({String profilePicture});
  void saveContactNumber({String contactNumber});
  void saveLanguage({String language});
  void removeToken();
  void removeUsername();
  void removeProfilePicture();
  void removeContactNumber();
  void removeEmail();
  void removeLanguage();
  void clearAllValues();
  Future<String> getUsername();
  Future<String> getEmail();
  Future<String> getContactNumber();
  Future<String> getProfilePicture();
  Future<String> getLanguage();
  Future<String> getPopupHomeFlag();
  Future<String> getFcmToken();
  void saveFcmToken({String fcmToken});
  void removeFcmToken();
}

class StorageServiceSharedPreferences
    implements StorageServiceSharedPreferencesContract {
  @override
  Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get("sp_token") != null
        ? prefs.get("sp_token").toString()
        : null;
  }

  @override
  void saveToken({String token}) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_token', token);
  }

  @override
  void removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_token', "");
  }

  @override
  Future<String> getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get("sp_username") != null
        ? prefs.get("sp_username").toString()
        : null;
  }

  @override
  void saveUsername({String username}) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_username', username);
  }

  @override
  void removeUsername() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_username', "");
  }

  @override
  void saveEmail({String email}) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_email', email);
  }

  @override
  Future<String> getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get("sp_email") != null
        ? prefs.get("sp_email").toString()
        : null;
  }

  @override
  void removeEmail() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_email', "");
  }

  @override
  Future<String> getContactNumber() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get("sp_contact") != null
        ? prefs.get("sp_contact").toString()
        : null;
  }

  @override
  void saveContactNumber({String contactNumber}) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_contact', contactNumber);
  }

  @override
  void removeContactNumber() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_contact', "");
  }

  @override
  Future<String> getProfilePicture() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get("sp_profile") != null
        ? prefs.get("sp_profile").toString()
        : null;
  }

  @override
  void removeProfilePicture() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_profile', "");
  }

  @override
  void saveProfilePicture({String profilePicture}) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_profile', profilePicture);
  }

  @override
  void clearAllValues() {
    removeToken();
    removeUsername();
    removeEmail();
    removeContactNumber();
    removeLanguage();
    removeFcmToken();
  }

  @override
  void savePopupHomeFlag({String status}) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_homepopupflag', status);
  }

  @override
  Future<String> getPopupHomeFlag() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get("sp_homepopupflag") != null
        ? prefs.get("sp_homepopupflag").toString()
        : null;
  }

  @override
  Future<String> getLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get("sp_Setlanguage") != null
        ? prefs.get("sp_Setlanguage").toString()
        : null;
  }

  @override
  void removeLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_Setlanguage', "");
  }

  @override
  void saveLanguage({String language}) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_Setlanguage', language);
  }

  @override
  Future<String> getFcmToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get("sp_fcm_token") != null
        ? prefs.get("sp_fcm_token").toString()
        : null;
  }

  @override
  void removeFcmToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_fcm_token', "");
  }

  @override
  void saveFcmToken({String fcmToken}) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('sp_fcm_token', fcmToken);
  }
}
