import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class DateTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final int newTextLength = newValue.text.length;
    int selectionIndex = newValue.selection.end;

    String formattedText = '';

    if (newTextLength >= 5) {
      formattedText = newValue.text.substring(0, 4) +
          '-' +
          newValue.text.substring(4, 6) +
          (newTextLength > 6 ? '-' + newValue.text.substring(6, newTextLength) : '');
    } else if (newTextLength >= 4) {
      formattedText = newValue.text.substring(0, 4) + '-' + newValue.text.substring(4, newTextLength);
    } else {
      formattedText = newValue.text;
    }

    selectionIndex += selectionIndex > 4 ? (selectionIndex > 6 ? 2 : 1) : 0;

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}