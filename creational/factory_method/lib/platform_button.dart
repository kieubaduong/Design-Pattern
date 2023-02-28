import 'package:factory_method/android_button.dart';
import 'package:factory_method/ios_button.dart';
import 'package:flutter/cupertino.dart';

abstract class PlatformButton {
  factory PlatformButton(TargetPlatform platform) {
    switch (platform) {
      case TargetPlatform.android:
        return AndroidButton();
      case TargetPlatform.iOS:
        return IosButton();
      default:
        return AndroidButton();
    }
  }

  Widget build({
    required BuildContext context,
    required Widget child,
    required VoidCallback onPressed,
  });
}
