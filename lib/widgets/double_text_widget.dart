import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigtext;
  final String smalltext;
  const AppDoubleTextWidget({super.key, required this.bigtext, required this.smalltext});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigtext,style: Styles.headlineStyle2,),
        InkWell(
            onTap: (){
              print("You are trapped");
            },
            child: Text(smalltext,style: Styles.textStyle.copyWith(color: Styles.primaryColor))),
      ],
    );
  }
}
