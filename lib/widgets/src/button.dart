import 'package:flutter/material.dart';

enum MyButtonType { none, runApp, collection, todo, empty, hard }

extension MyButtonTypeX on MyButtonType {
  String get displayText => const <MyButtonType, String>{
    MyButtonType.runApp: 'APP',
    MyButtonType.collection: 'Collection',
    MyButtonType.todo: 'TODO',
    MyButtonType.empty: 'Empty',
    MyButtonType.hard: 'Hard',
  }[this] ?? '';

  Color? get color => <MyButtonType, Color?>{
    MyButtonType.runApp: Colors.blue.shade100,
    MyButtonType.collection: Colors.orange.shade100,
    MyButtonType.todo: Colors.lightGreenAccent.shade100,
    MyButtonType.empty: Colors.grey.shade300,
    MyButtonType.hard: Colors.red.shade100,
  }[this];
}

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.text,
    this.page,
    this.onPressed,
    this.myButtonTypes = const <MyButtonType>[],
    this.level = -1,
  }) : super(key: key);

  final String text;
  final Widget? page;
  final Function? onPressed;
  final List<MyButtonType> myButtonTypes;

  /// 5   = 普通等級
  /// 10  = 重要
  final int level;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: InkWell(
        onTap: () {
          if (onPressed != null) {
            onPressed!();
            return;
          }
          if (page != null) {
            Navigator.of(context).push<dynamic>(MaterialPageRoute<dynamic>(builder: (_) => page!));
            return;
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColorLight,
              ),
              borderRadius: BorderRadius.circular(8.0)
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(text),
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 2,
                    ),
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      spacing: 8.0,
                      children: <Widget>[
                        ..._buildLabels(myButtonTypes),
                        if (level >= 0)
                          _buildStars(level),
                      ],
                    ),
                  ),
                ],
              ),
              // if (level >= 0)
              //   _buildStars(level),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildLabels(List<MyButtonType> types) =>
      types.map((MyButtonType e) {
        return Chip(
            backgroundColor: e.color,
            label: Text(e.displayText)
        );
      }).toList();

  Widget _buildStars(int starNumber) {
    final List<Color> colors = <Color>[
      Colors.grey,
      Colors.orange,
      Colors.pinkAccent,
      Colors.yellow,
    ];

    const int maxDisplayStarNumber = 5;
    // 顯示上最多星星數的倍數
    final int fiveMultiple = starNumber ~/ maxDisplayStarNumber;
    int highLevelStarNumber = starNumber % maxDisplayStarNumber;
    if (highLevelStarNumber == 0) {
      highLevelStarNumber = maxDisplayStarNumber;
    }
    final bool isOverMaxCount = starNumber >= (colors.length - 1) * maxDisplayStarNumber;
    final Color highLevelColor = isOverMaxCount
        ? colors.last
        : highLevelStarNumber == maxDisplayStarNumber
        ? colors[fiveMultiple]
        : colors[fiveMultiple + 1];

    List<Widget> stars;
    if (isOverMaxCount) {
      stars = List<Widget>.generate(maxDisplayStarNumber, (int index) => Icon(
        Icons.star, color: colors.last,
      ));
    } else {
      stars = <Widget>[
        ...List<Widget>.generate(highLevelStarNumber, (int index) => Icon(
          Icons.star, color: highLevelColor,
        )),
        if (fiveMultiple >= 0)
          ...List<Widget>.generate(maxDisplayStarNumber - highLevelStarNumber, (int index) => Icon(
            Icons.star, color: colors[fiveMultiple],
          )),
      ];
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ...stars,
      ],
    );
  }
}