import 'package:flutter/material.dart';

import 'style.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
   final bool? isColor;
  const TextStyleThird({super.key, required this.text, required this.isColor});

  @override
  Widget build(BuildContext context) {
    return   Text( text,
      style: isColor==null? AppStyles.headLineStyle3
          .copyWith(color: Colors.white):AppStyles.headLineStyle3
    );
  }
}
