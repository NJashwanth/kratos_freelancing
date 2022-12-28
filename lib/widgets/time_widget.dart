import 'package:flutter/material.dart';
import 'package:kratos_freelancing/utils/colors.dart';
import 'package:kratos_freelancing/utils/text_styles.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => showTimerWidget(context),
          child: Container(
              width: 130,
              height: 60,
              decoration: BoxDecoration(
                color: timeStartFieldColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Start",
                    style: timeWidgetLabelTextStyle,
                  ),
                  Text(
                    "2:00 PM",
                    style: timeValueLabelTextStyle,
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () => showTimerWidget(context),
          child: Container(
              width: 130,
              height: 60,
              decoration: BoxDecoration(
                color: timeEndFieldColor,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "End",
                      style: timeWidgetLabelTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "2:00 PM",
                      style: timeValueLabelTextStyle,
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }

  void showTimerWidget(BuildContext context) {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }
}
