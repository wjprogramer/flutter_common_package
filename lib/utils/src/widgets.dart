import 'package:flutter/material.dart';

const _hp = 0.0;
const _vp = 5.0;

Widget title(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: _hp, vertical: _vp),
    child: Text(text,
      style: const TextStyle(fontSize: 23, color: Colors.blueGrey),
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
    color: Colors.orange[300],
    child: Text(text,
      style: const TextStyle(fontSize: 23, color: Colors.white),
    ),
  );
}

Widget h2(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: _hp, vertical: _vp),
    child: Text(text,
      style: TextStyle(fontSize: 20, color: Colors.teal[600]),
    ),
  );
}

Widget p(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: _hp, vertical: _vp),
    margin: const EdgeInsets.symmetric(horizontal: _hp, vertical: _vp),
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