import 'package:awesome_weather/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'color_scheme.dart';

@immutable
class AppTheme {

  static ThemeData getThemeData({required Brightness brightness}){
    ColorScheme colorScheme = AppColorScheme.getColorScheme(brightness);

    final CardThemeData cardThemeData = CardThemeData(
      color: colorScheme.surfaceContainer
    );

    final DividerThemeData dividerThemeData = DividerThemeData(
      indent: 0,
      endIndent: 0,
      space: 0,
      thickness: 0.5,
      color: colorScheme.outline
    );

    final iconThemeData = IconThemeData(
      color: colorScheme.onSurface
    );

    return ThemeData(
      fontFamily: "Roboto",
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: textTheme,
      scaffoldBackgroundColor: colorScheme.surface,
      cardColor: colorScheme.surfaceContainer,
      cardTheme: cardThemeData,
      dividerTheme: dividerThemeData,
      iconTheme: iconThemeData
    );
  }

}
