import 'package:flutter/material.dart';
import 'package:learning_dashboard/text_styles.dart';

class DashboardBorderedText extends StatelessWidget {
  final String text;
  final bool textFixed;

  DashboardBorderedText({Key key, @required this.text, this.textFixed = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      margin: EdgeInsets.symmetric(vertical: 2.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(248, 248, 248, 1),
          border: Border.all(color: Color.fromRGBO(234, 234, 234, 1)),
          borderRadius: BorderRadius.circular(8)),
      child: Text(
        this.text,
        style: textFixed
            ? AppTextStyles.plainTextBoldRedStyle()
            : AppTextStyles.plainTextBoldBlackStyle(),
      ),
    );
  }
}
