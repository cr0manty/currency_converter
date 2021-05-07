// @dart=2.12

import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  Size get mediaSize => MediaQuery.of(this).size;

  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;

  double get bottomPadding => MediaQuery.of(this).padding.bottom;

  double get topPadding => MediaQuery.of(this).padding.top;

  MediaQueryData get mediaData => MediaQuery.of(this);

  double get keyboardHeight => MediaQuery.of(this).viewInsets.bottom;

  EdgeInsets get screenPadding => MediaQuery.of(this).padding;
}
