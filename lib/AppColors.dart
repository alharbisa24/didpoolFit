import 'package:flutter/material.dart';

class AppGradient {
  static const LinearGradient mainGradient = LinearGradient(
    colors: [
      Color(0xFF6B50F6),
      Color(0xFFCC8FED),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

    static const LinearGradient purpleLinear = LinearGradient(
    colors: [
      Color(0xFFEEA4CE),
      Color(0xFFC150F6),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
    static const LinearGradient logoLinear = LinearGradient(
    colors: [
      Color(0xFF6B50F6),
      Color(0xFFCC8FED),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

    static const LinearGradient greenLinear = LinearGradient(
    colors: [
      Color(0xFF00F0FF),
      Color(0xFF00FF66),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );


  static LinearGradient shade(LinearGradient gradient, double opacity) {
  return LinearGradient(
    colors: gradient.colors
        .map((c) => c.withOpacity(opacity))
        .toList(),
    begin: gradient.begin,
    end: gradient.end,
  );
}

}
