import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: PrimaryColors.shade600,
    scaffoldBackgroundColor: NeutralColors.shade50,

    colorScheme: ColorScheme.fromSeed(seedColor: PrimaryColors.shade600, primary: PrimaryColors.shade600, secondary: SecondaryColors.shade600, surface: NeutralColors.shade50),

    appBarTheme: const AppBarTheme(
      backgroundColor: NeutralColors.shade50,
      elevation: 0,
      iconTheme: IconThemeData(color: NeutralColors.shade900),
      titleTextStyle: TextStyle(color: NeutralColors.shade900, fontSize: 18, fontWeight: FontWeight.w600),
    ),

    textTheme: const TextTheme(bodyMedium: TextStyle(color: NeutralColors.shade800)),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: PrimaryColors.shade600,
        foregroundColor: NeutralColors.shade900,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    useMaterial3: true,
  );
}
