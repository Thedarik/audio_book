import 'package:flutter/cupertino.dart';

Widget fixedSizedBox({required double height,double? width}) {
  return SizedBox(
    height: height,
    width: width??0,
  );
}