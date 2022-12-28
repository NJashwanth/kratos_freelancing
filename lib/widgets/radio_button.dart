import 'package:flutter/material.dart';
import 'package:kratos_freelancing/utils/colors.dart';

class RadioButtonWidget extends StatelessWidget {
  final bool isSingle;
  const RadioButtonWidget({Key? key, required this.isSingle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset(
              !isSingle ? "assets/children_2.png" : "assets/children_1.png",
              width: 36,
              height: 36,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              isSingle ? "Only for this child" : "Reschedule for all children",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(
              Icons.circle,
              color: isSingle ? Colors.grey : activeRadioColor,
            ),
          )
        ],
      ),
    );
  }
}
