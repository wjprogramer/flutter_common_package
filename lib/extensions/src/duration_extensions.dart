import 'dart:async';

// ref: https://github.com/jonataslaw/getx/blob/master/lib/get_utils/src/extensions/duration_extensions.dart

extension GetDurationUtils on Duration {
  /// Utility to delay some callback (or code execution).
  ///
  /// Sample:
  /// ```
  /// void main() async {
  ///   final _delay = 3.seconds;
  ///   print('+ wait $_delay');
  ///   await _delay.delay();
  ///   print('- finish wait $_delay');
  ///   print('+ callback in 700ms');
  ///   await 0.7.seconds.delay(() {
  /// }
  ///```
  Future delay([FutureOr callback()?]) async => Future.delayed(this, callback);
}

