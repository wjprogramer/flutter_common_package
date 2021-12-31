import 'package:flutter/material.dart';

void push(BuildContext context, Widget page) {
  print('Current Page: ${page.runtimeType}');

  Navigator.of(context).push(MaterialPageRoute(
    builder: (_) => page
  ));
}