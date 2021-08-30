
// ref: https://github.com/jonataslaw/getx/blob/master/lib/get_utils/src/extensions/widget_extensions.dart

import 'package:flutter/widgets.dart';

extension WidgetPaddingX on Widget {
  Widget get paddingZero => Padding(padding: EdgeInsets.zero, child: this);

  Widget paddingAll(double padding) => Padding(
    padding: EdgeInsets.all(padding),
    child: this,
  );

  Widget paddingSymmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
  }) => Padding(
    padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
    child: this,
  );

  Widget paddingOnly({
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
    double left = 0.0,
  }) => Padding(
    padding: EdgeInsets.only(top: top, right: right, bottom: bottom, left: left),
    child: this,
  );
}

extension WidgetMarginX on Widget {
  Widget get marginZero => Container(margin: EdgeInsets.zero, child: this);

  Widget marginAll(double margin) => Container(
    margin: EdgeInsets.all(margin),
    child: this,
  );

  Widget marginSymmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
  }) => Container(
    margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
    child: this,
  );

  Widget marginOnly({
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
    double left = 0.0,
  }) => Container(
    margin: EdgeInsets.only(top: top, right: right, bottom: bottom, left: left),
    child: this,
  );
}
