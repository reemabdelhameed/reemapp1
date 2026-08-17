import 'package:app_reem/utilities/dialogs/generic_dialog.dart';
import 'package:flutter/material.dart';

Future<void> showErrorDialog(BuildContext context, String text) {
  return showGenericDialog(
    context: context,
    title: 'An error has occured',
    content: text,
    optionsBuilder: () => {'Ok': null}, 
  );
}
