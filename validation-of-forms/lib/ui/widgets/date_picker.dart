import 'package:flutter/material.dart';

Future<DateTime?> datePicker({
  required BuildContext context,
}) async {
  return await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1980),
    lastDate: DateTime.now(),
  );
}
