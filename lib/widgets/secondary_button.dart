import 'package:flutter/material.dart';
import 'package:kratos_freelancing/utils/colors.dart';

import '../utils/text_styles.dart';

class SecondaryButton extends StatelessWidget {
  final String label;
  const SecondaryButton({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(side: BorderSide(color: primaryButtonColor)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: secondaryButtonLabelTextStyle,
        ),
      ),
    );
  }
}
