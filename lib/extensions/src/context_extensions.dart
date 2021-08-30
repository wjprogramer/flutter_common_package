import 'package:flutter/material.dart';

// ref: https://github.com/jonataslaw/getx/blob/master/lib/get_utils/src/extensions/context_extensions.dart

extension BuildContextX on BuildContext {
  // MediaQuery
  MediaQueryData  get mediaQuery              => MediaQuery.of(this);
  EdgeInsets      get mediaQueryViewPadding   => mediaQuery.viewPadding;
  EdgeInsets      get mediaQueryViewInsets    => mediaQuery.viewInsets;
  double          get devicePixelRatio        => mediaQuery.devicePixelRatio;
  double          get textScaleFactor         => mediaQuery.textScaleFactor;

  Size            get mediaQuerySize          => mediaQuery.size;
  double          get height                  => mediaQuerySize.height;
  double          get width                   => mediaQuerySize.width;
  double          get mediaQueryShortestSide  => mediaQuerySize.shortestSide;
  bool            get showNavbar              => width > 800;

  bool            get isPhone                 => mediaQueryShortestSide < 600;
  bool            get isSmallTablet           => mediaQueryShortestSide >= 600;
  bool            get isLargeTablet           => mediaQueryShortestSide >= 720;
  bool            get isTablet                => isSmallTablet || isLargeTablet;

  Orientation     get orientation             => mediaQuery.orientation;
  bool            get isLandscape             => orientation == Orientation.landscape;
  bool            get isPortrait              => orientation == Orientation.portrait;

  // Theme
  ThemeData       get theme                   => Theme.of(this);
  TextTheme       get textTheme               => theme.textTheme;
  bool            get isDarkMode              => theme.brightness == Brightness.dark;
  bool            get isLightMode             => theme.brightness == Brightness.light;

  IconThemeData   get iconTheme               => theme.iconTheme;
  Color?          get iconColor               => iconTheme.color;

  // T responsiveValue<T>({
  //   T? mobile,
  //   T? tablet,
  //   T? desktop,
  //   T? watch,
  // }) {
  //   var deviceWidth = mediaQuerySize.shortestSide;
  //   if (GetPlatform.isDesktop) {
  //     deviceWidth = mediaQuerySize.width;
  //   }
  //   if (deviceWidth >= 1200 && desktop != null) {
  //     return desktop;
  //   } else if (deviceWidth >= 600 && tablet != null) {
  //     return tablet;
  //   } else if (deviceWidth < 300 && watch != null) {
  //     return watch;
  //   } else {
  //     return mobile!;
  //   }
  // }
}