import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final bool? isColor;
  final String firstText;
  final String secondText;
  const AppColumnLayout({super.key, required this.firstText, required this.secondText, required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: isColor==null? Styles.headlineStyle3.copyWith(color: Colors.white):Styles.headlineStyle3,),
        SizedBox(height: 5,),
        Text(secondText,style: isColor==null? Styles.headlineStyle4.copyWith(color: Colors.white):Styles.headlineStyle4,),
      ],
    );
  }
}
