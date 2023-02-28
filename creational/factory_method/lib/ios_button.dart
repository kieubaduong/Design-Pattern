import 'package:factory_method/platform_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosButton implements PlatformButton {
  @override
  Widget build(
      {required BuildContext context,
      required Widget child,
      required VoidCallback onPressed}) {
    return CupertinoButton(
      onPressed: onPressed,
      color: Colors.blueAccent,
      child: child,
    );
  }
}
