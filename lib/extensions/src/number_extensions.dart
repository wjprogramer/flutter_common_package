import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

// ref: https://github.com/jonataslaw/getx/blob/master/lib/get_utils/src/extensions/double_extensions.dart
// ref: https://github.com/jonataslaw/getx/blob/master/lib/get_utils/src/extensions/num_extensions.dart

extension Precision on num {
  double toPrecision(int fractionDigits) {
    var mod = pow(10, fractionDigits.toDouble()).toDouble();
    return ((this * mod).round().toDouble() / mod);
  }

  bool isLowerThan(num b) => this < b;
  bool isGreaterThan(num b) => this > b;
  bool isEqual(num b) => this == b;

  /// ```dart
  /// await 2.delay();
  /// await 1.delay(() => print('Hello World'));
  /// ```
  Future delay([FutureOr callback()?]) async => Future.delayed(
    Duration(milliseconds: (this * 1000).round()),
    callback,
  );

  /// ```dart
  /// print(1.seconds + 200.milliseconds);
  /// print(1.hours + 30.minutes);
  /// print(1.5.hours);
  ///```
  Duration get days => Duration(hours: (this * Duration.hoursPerDay).round());
  Duration get hours => Duration(minutes: (this * Duration.minutesPerHour).round());
  Duration get minutes => Duration(seconds: (this * Duration.secondsPerMinute).round());
  Duration get seconds => Duration(milliseconds: (this * 1000).round());
  Duration get milliseconds => Duration(microseconds: (this * 1000).round());
}

extension IntX on int {
  Widget get height => SizedBox(
    height: this.toDouble(),
  );
  Widget get width => SizedBox(
    width: this.toDouble(),
  );
}

extension DoubleX on double {
  Widget get height => SizedBox(
    height: this,
  );
  Widget get width => SizedBox(
    width: this,
  );
}

extension NumX on num {
  /// 將 [start1] 之間 [end1] 的數字，轉換成 [start2] ~ [end2]
  num convertRanges(start1, end1, start2, end2) {
    var ratio = (this - start1) / (end1 - start1);
    return (end2 - start2) * ratio + start2;
  }
}
