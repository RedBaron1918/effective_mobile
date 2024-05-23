import 'package:flutter/material.dart';

abstract final class TextStyles {
  ///22px
  static const TextStyle extraLarge = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 22,
  );

  ///22px
  static const TextStyle extraLargeBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 22,
  );

  ///22px
  static const TextStyle extraLargeBoldMedium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 22,
  );

  ///20px
  static const TextStyle large = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );

  ///20px
  static const TextStyle largeBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  ///20px
  static const TextStyle largeMedium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );

  ///16px bold
  static const TextStyle regularBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  ///16px
  static const TextStyle regular = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );

  ///16px Medium
  static const TextStyle regularMedium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );

  ///14px bold
  static const TextStyle smallBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  ///14px
  static const TextStyle small = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  /// 14px Medium
  static const TextStyle smallMedium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  ///10px bold
  static const TextStyle extraSmallBold = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 10,
  );

  /// 10px
  static const TextStyle extraSmall = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10,
  );

  /// 10px Medium
  static const TextStyle extraSmallMedium = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10,
  );
}
