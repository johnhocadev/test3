// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color maintxt;
  late Color subtxt;
  late Color border;
  late Color maincolor;
  late Color subcolor;
  late Color background;
  late Color alltxt;
  late Color impactTxt;
  late Color customColor1;
  late Color customColor2;
  late Color customColor3;
  late Color customColor4;
  late Color customColor5;
  late Color primaryBtnText;
  late Color lineColor;
  late Color backgroundComponents;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4B39EF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFFF5963);
  late Color primaryText = const Color(0xFF101213);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFF616161);
  late Color accent2 = const Color(0xFF757575);
  late Color accent3 = const Color(0xFFE0E0E0);
  late Color accent4 = const Color(0xFFEEEEEE);
  late Color success = const Color(0xFF04A24C);
  late Color warning = const Color(0xFFFCDC0C);
  late Color error = const Color(0xFFE21C3D);
  late Color info = const Color(0xFF1C4494);

  late Color maintxt = Color(0xFF06283D);
  late Color subtxt = Color(0xFF727272);
  late Color border = Color(0xFFDFDFDF);
  late Color maincolor = Color(0xFF1363DF);
  late Color subcolor = Color(0xFF47B5FF);
  late Color background = Color(0xFFDFF6FF);
  late Color alltxt = Color(0xFF1A1A1A);
  late Color impactTxt = Color(0xFFFF4700);
  late Color customColor1 = Color(0xFF697075);
  late Color customColor2 = Color(0xFFFFEDED);
  late Color customColor3 = Color(0xFFF9EABB);
  late Color customColor4 = Color(0xFF776CF9);
  late Color customColor5 = Color(0xFF39B8D2);
  late Color primaryBtnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFE0E3E7);
  late Color backgroundComponents = Color(0xFF1D2428);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'mice';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'mice';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'mice';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'mice',
        color: theme.alltxt,
        fontWeight: FontWeight.w500,
        fontSize: 27.0,
      );
  String get headlineLargeFamily => 'mice';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'mice';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.alltxt,
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'mice';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'mice',
        color: theme.alltxt,
        fontWeight: FontWeight.w500,
        fontSize: 21.0,
      );
  String get titleLargeFamily => 'mice';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'mice';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.alltxt,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'mice';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'mice',
        color: theme.alltxt,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'mice';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'mice';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'mice';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'mice';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
      );
  String get bodyMediumFamily => 'mice';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.alltxt,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'mice';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'mice',
        color: theme.alltxt,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'mice';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'mice';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'mice';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 29.0,
      );
  String get headlineLargeFamily => 'mice';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'mice';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 26.0,
      );
  String get headlineSmallFamily => 'mice';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 23.0,
      );
  String get titleLargeFamily => 'mice';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'mice';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
  String get titleSmallFamily => 'mice';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get labelLargeFamily => 'mice';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'mice';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'mice';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'mice';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
      );
  String get bodyMediumFamily => 'mice';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get bodySmallFamily => 'mice';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'mice';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 57.0,
      );
  String get displayMediumFamily => 'mice';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'mice';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 35.0,
      );
  String get headlineLargeFamily => 'mice';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'mice';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 31.0,
      );
  String get headlineSmallFamily => 'mice';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 27.0,
      );
  String get titleLargeFamily => 'mice';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'mice';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 23.0,
      );
  String get titleSmallFamily => 'mice';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
  String get labelLargeFamily => 'mice';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      );
  String get labelMediumFamily => 'mice';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
  String get labelSmallFamily => 'mice';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 11.0,
      );
  String get bodyLargeFamily => 'mice';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
      );
  String get bodyMediumFamily => 'mice';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get bodySmallFamily => 'mice';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'mice',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
