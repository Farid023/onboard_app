import 'package:flutter/material.dart';

extension PaddingExtension on num {
  SizedBox get height {
    return SizedBox(
      height: toDouble(),
    );
  }

  SizedBox get width {
    return SizedBox(
      width: toDouble(),
    );
  }
}
