import 'package:flutter/material.dart';
import 'package:flutter_common_package/config/config.dart';

const _hp = 0.0;
const _vp = 5.0;

Widget title(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: _hp, vertical: _vp),
    child: Text(text,
      style: TextStyle(fontSize: 23, color: myConfig.primaryColor),
    ),
  );
}

Widget title2(String text) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Text(text, style: const TextStyle(fontSize: 20),),
  );
}

Widget h1(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: _hp, vertical: _vp),
    child: Text(text,
      style: const TextStyle(fontSize: 23),
    ),
  );
}

Widget h2(String text, { Color? color }) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: _hp, vertical: _vp),
    child: Text(text,
      style: TextStyle(fontSize: 20, color: color ?? myConfig.primaryColor.shade600),
    ),
  );
}

Widget p(String text, { Color? backgroundColor }) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: _hp, vertical: _vp),
    margin: const EdgeInsets.symmetric(horizontal: _hp, vertical: _vp),
    color: backgroundColor,
    child: Text(text,
      style: const TextStyle(),
    ),
  );
}

Widget code(String text) {
  return Container(
    color: Colors.grey[200],
    padding: const EdgeInsets.symmetric(horizontal: _hp, vertical: _vp),
    margin: const EdgeInsets.symmetric(horizontal: _hp, vertical: _vp),
    child: Text(
      text,
      style: const TextStyle(),
    ),
  );
}