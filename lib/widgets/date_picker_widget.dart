import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kratos_freelancing/utils/colors.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({Key? key}) : super(key: key);

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = DateFormat("EEE, MMM d, ''yy").format(DateTime.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: dateInput,
        decoration: InputDecoration(
            filled: true,
            fillColor: dateFieldColor,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40.0)),
            ),
            suffixIcon: const Icon(Icons.calendar_month)),
        readOnly: true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2100));

          if (pickedDate != null) {
            String formattedDate =
                DateFormat("EEE, MMM d, ''yy").format(pickedDate);
            setState(() {
              dateInput.text =
                  formattedDate; //set output date to TextField value.
            });
          } else {}
        },
      ),
    );
  }
}
