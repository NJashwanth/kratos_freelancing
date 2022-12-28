import 'package:flutter/material.dart';
import 'package:kratos_freelancing/utils/colors.dart';
import 'package:kratos_freelancing/widgets/dialog_widget.dart';
import 'package:kratos_freelancing/widgets/secondary_button.dart';

import 'primary_button.dart';

class TrailingWidget extends StatelessWidget {
  final bool isCalender;
  const TrailingWidget({Key? key, required this.isCalender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => openDialog(context),
      child: Container(
        height: 80,
        width: double.infinity,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
          color: isCalender
              ? calenderCardBackgroundColor
              : deleteCardBackgroundColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              isCalender ? Icons.calendar_month_outlined : Icons.delete,
              color: Colors.white,
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                isCalender ? "Add to calendar" : "Delete",
                style: const TextStyle(color: Colors.white, fontSize: 6),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openDialog(BuildContext context) {
    if (isCalender) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: const Text("Reschedule"),
            content: const DialogWidget(),
            actions: [
              InkWell(
                child: const SecondaryButton(label: "Cancel"),
                onTap: () => Navigator.of(context).pop(),
              ),
              InkWell(
                child: const PrimaryButton(label: "Reschedule"),
                onTap: () => Navigator.of(context).pop(),
              )
            ],
          );
        },
      );
    }
  }
}
