import 'package:flutter/services.dart';

class DateTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final int newTextLength = newValue.text.length;
    int selectionIndex = newValue.selection.end;

    String formattedText = '';

    if (newTextLength > 4 && newTextLength <= 6) {
      formattedText = '${newValue.text.substring(0, 4)}-${newValue.text.substring(4, newTextLength)}';
      selectionIndex++;
    } else if (newTextLength > 6) {
      formattedText = '${newValue.text.substring(0, 4)}-${newValue.text.substring(4, 6)}-${newValue.text.substring(6, newTextLength)}';
      selectionIndex += 2;
    } else {
      formattedText = newValue.text;
    }

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
