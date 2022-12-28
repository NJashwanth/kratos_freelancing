import 'package:flutter/material.dart';
import 'package:kratos_freelancing/widgets/radio_button.dart';
import 'package:kratos_freelancing/widgets/time_widget.dart';

import 'date_picker_widget.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const DatePickerWidget(),
            const TimerWidget(),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  RadioButtonWidget(isSingle: true),
                  RadioButtonWidget(isSingle: false),
                ]),
          ],
        ),
      ),
    );
  }
}
