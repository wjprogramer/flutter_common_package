import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({
    Key? key,
    this.children = const <Widget>[],
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: <Widget>[
        const SizedBox(height: 16,),
        ...children,
        const SizedBox(height: 16,),
      ],
    );
  }
}