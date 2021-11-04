import 'package:flutter/material.dart';
import 'package:learning_dashboard/colors.dart';

class AppTextStyles {
  static TextStyle blackButtonTextStyle() => const TextStyle(
        color: AppColors.white,
        fontSize: 17,
        fontWeight: FontWeight.w600,
        fontFamily: 'Nunito',
        letterSpacing: 1.5,
      );

  static TextStyle instructionBasic() => const TextStyle(
        fontSize: 14,
        fontFamily: 'Nunito',
      );

  static TextStyle instructionGrey() => instructionBasic().copyWith(
        color: AppColors.grey1,
      );

  static TextStyle instructionBlack() => instructionBasic().copyWith(
        color: AppColors.black,
        fontWeight: FontWeight.w700,
      );

  static TextStyle sentenceBlack() => instructionBlack().copyWith(
    fontSize: 16,
  );

  static TextStyle sentenceRed() => instructionRed().copyWith(
    fontSize: 16,
  );

  static TextStyle instructionRed() => instructionGrey().copyWith(
        color: AppColors.red,
        fontWeight: FontWeight.w800,
      );

  static TextStyle instructionGreen() => instructionGrey().copyWith(
        color: AppColors.green,
        fontWeight: FontWeight.w800,
      );

  static TextStyle instructionPurple() => instructionGrey().copyWith(
        color: AppColors.purple,
        fontWeight: FontWeight.w800,
      );

  static TextStyle progressionStyle() => const TextStyle(
        fontSize: 17,
        fontFamily: 'Nunito',
        color: AppColors.black,
        fontWeight: FontWeight.w900,
      );

  static TextStyle activeCartTextStyle() => const TextStyle(
        fontSize: 16,
        fontFamily: 'Nunito',
        color: AppColors.purple,
        fontWeight: FontWeight.w800,
      );

  static TextStyle activeCartBlackTextStyle() => activeCartTextStyle().copyWith(
        color: AppColors.black,
      );

  static TextStyle superscriptTextStyle() => const TextStyle(
        color: AppColors.green,
        fontSize: 10,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w600,
      );

  static TextStyle crossedCartTextStyle() => const TextStyle(
        fontSize: 15,
        fontFamily: 'Nunito',
        color: AppColors.lightPurple,
        decoration: TextDecoration.lineThrough,
        fontWeight: FontWeight.w700,
      );

  static TextStyle giphyCredsTextStyle() => const TextStyle(
        fontSize: 8,
        fontFamily: 'Nunito',
        color: AppColors.black,
      );

  static TextStyle promptTextStyle() => const TextStyle(
        fontSize: 48,
        fontFamily: 'Nunito',
        color: AppColors.white,
        fontWeight: FontWeight.w600,
      );

  static TextStyle promptBottomTextStyle() => const TextStyle(
        fontSize: 18,
        fontFamily: 'Nunito',
        color: AppColors.white,
        fontWeight: FontWeight.bold,
      );

  static TextStyle editFieldTextStyle() => const TextStyle(
        fontSize: 16,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w800,
        color: AppColors.lightBlue,
      );

  //following stuff added by patrik
  static TextStyle plainTextStyle() => TextStyle(color: Colors.black87, fontFamily: 'Nunito', fontWeight: FontWeight.normal, fontSize: 16.0, height: 1.5);

  static TextStyle plainTextBoldBlackStyle() => TextStyle(
        color: Colors.black87,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        height: 1.5,
      );

  static TextStyle titleTextBoldBlackStyle() => TextStyle(
        color: Colors.black87,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
        height: 2.0,
      );

  static TextStyle subtitleTextStyle() => TextStyle(
        color: Colors.grey,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        height: 1.5,
      );

  static TextStyle inputLabel() => const TextStyle(
        fontSize: 14,
        fontFamily: 'Nunito',
        color: AppColors.grey1,
        fontWeight: FontWeight.w400,
      );

  static TextStyle plainTextBoldRedStyle() => TextStyle(
        color: AppColors.red,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        height: 1.5,
      );

  static TextStyle dropdownTextStyle() => TextStyle(
        color: AppColors.purple,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        height: 1.5,
      );

  static TextStyle tabBarStyle() => const TextStyle(
        fontSize: 15,
        fontFamily: 'Nunito',
        color: AppColors.black,
        fontWeight: FontWeight.w700,
      );

  static TextStyle appBarStyle() => const TextStyle(
        fontSize: 19,
        fontFamily: 'Nunito',
        color: AppColors.black,
        fontWeight: FontWeight.w800,
      );

  static TextStyle infoStyle() => const TextStyle(
        fontSize: 13,
        fontFamily: 'Nunito',
        color: Color.fromRGBO(215, 214, 214, 1),
      );

  static TextStyle tileTextStyle() => const TextStyle(
        fontSize: 15,
        fontFamily: 'Nunito',
        color: AppColors.black,
        fontWeight: FontWeight.w900,
      );

  static TextStyle inputFieldTextStyle() => editFieldTextStyle().copyWith(
        color: AppColors.purple,
      );

  static TextStyle cueTextStyle() => editFieldTextStyle().copyWith(
        color: AppColors.black,
      );
}
