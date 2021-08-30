// ref: https://github.com/jonataslaw/getx/blob/master/lib/get_utils/src/extensions/iterable_extensions.dart

extension IterableX<T> on Iterable<T> {
  Iterable<TRes> mapMany<TRes>(
      Iterable<TRes>? Function(T item) selector) sync* {
    for (var item in this) {
      final res = selector(item);
      if (res != null) yield* res;
    }
  }

  /// ref: https://stackoverflow.com/questions/54990716/flutter-get-iteration-index-from-list-map
  ///
  /// example:
  ///
  /// ```dart
  /// myList.mapIndexed((element, index) {});
  /// ```
  Iterable<E> mapIndexed<E>(E Function(T e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}