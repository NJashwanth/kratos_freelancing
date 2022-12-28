import 'package:flutter/material.dart';
import 'package:kratos_freelancing/utils/colors.dart';
import 'package:kratos_freelancing/utils/text_styles.dart';
import 'package:kratos_freelancing/widgets/clip_widget.dart';
import 'package:kratos_freelancing/widgets/primary_button.dart';
import 'package:kratos_freelancing/widgets/secondary_button.dart';
import 'package:kratos_freelancing/widgets/trailing_widget.dart';

class DashboardCardWidget extends StatelessWidget {
  const DashboardCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(30),
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [topWidget(), bottomWidget()],
          ),
        ),
      ),
    );
  }

  Widget topWidget() {
    return Container(
      decoration: BoxDecoration(
        color: topWidgetBackgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(flex: 2, child: imageAvatarWidget()),
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Fletcher",
                    style: userNameTextStyle,
                  ),
                  Text(
                    "Mental & Behavioral Consultation",
                    style: subTitleTextStyle,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ClipWidget(isConfirmed: false),
                  Text(
                    "Follow-up",
                    style: followUpTextStyle,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageAvatarWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                child: Image.asset('assets/img.png', fit: BoxFit.fill),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 10,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff004235),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.add_ic_call_sharp,
                    size: 9,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            "in-call",
            style: inCallTextStyle,
          ),
        )
      ],
    );
  }

  Widget bottomWidget() {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: leftWidget(),
        ),
        Expanded(
          flex: 2,
          child: rightWidget(),
        )
      ],
    );
  }

  Widget leftWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sun 10 Dec 2022 | 12:30 pm",
            style: dateTextStyle,
          ),
          Text(
            "Beirut / Asia (GMT +3)",
            style: timeZoneTextStyle,
          ),
          const ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              PrimaryButton(label: "Confirm"),
              SecondaryButton(label: "Reschedule")
            ],
          )
        ],
      ),
    );
  }

  Widget rightWidget() {
    return Column(
      children: const [
        InkWell(child: TrailingWidget(isCalender: true)),
        TrailingWidget(isCalender: false),
      ],
    );
  }
}
