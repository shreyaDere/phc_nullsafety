import 'package:flutter/material.dart';

Widget showLoader({BuildContext context}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    color: Colors.white.withOpacity(0.2),
    child: Center(
      child: CircularProgressIndicator(
        valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
        strokeWidth: 5,
      ),
    ),
  );
}
