import 'package:flutter/material.dart';

class SnackBarHelper extends SnackBar {
  SnackBarHelper() : super(content: Text("Default"));

  SnackBarHelper.success({required String message})
      : super(content: Text("$message"), backgroundColor: Colors.green );
  SnackBarHelper.error({required String message})
      : super(content: Text("$message"), backgroundColor: Colors.red);
  SnackBarHelper.warning({required String message})
      : super(content: Text("$message"), backgroundColor: Colors.orangeAccent);
}
