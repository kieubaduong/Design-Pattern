import 'package:factory_method/platform_button.dart';
import 'package:flutter/cupertino.dart';

class IosButton implements PlatformButton {
  @override
  Widget build(
      {required BuildContext context,
      required Widget child,
      required VoidCallback onPressed}) {
    return CupertinoButton(onPressed: onPressed, child: child);
  }
}
