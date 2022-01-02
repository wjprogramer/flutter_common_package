import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({
    Key? key,
    this.children = const <Widget>[],
    this.padding = const EdgeInsets.symmetric(horizontal: 24),
  }) : super(key: key);

  final List<Widget> children;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: padding,
      children: <Widget>[
        const SizedBox(height: 16,),
        ...children,
        const SizedBox(height: 80,),
      ],
    );
  }
}