import 'package:flutter/material.dart';

class FirebaseLoginResponse {
  bool status;
  String accessToken;
  FirebaseLoginResponse({@required this.status, @required this.accessToken});
}
