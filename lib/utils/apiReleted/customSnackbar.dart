import 'package:flutter/material.dart';

class CustomSnackbar {
  SnackBar check(title) {
    return SnackBar(
      content: Text(title),
    );
  }
}
