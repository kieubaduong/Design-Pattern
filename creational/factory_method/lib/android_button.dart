import 'package:factory_method/platform_button.dart';
import 'package:flutter/material.dart';

class AndroidButton implements PlatformButton {
  @override
  Widget build(
      {required BuildContext context,
      required Widget child,
      required VoidCallback onPressed}) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xFF16FF00))),
      child: child,
    );
  }
}
