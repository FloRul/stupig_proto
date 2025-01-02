import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  // dividerTheme: DividerThemeData(color: Colors.white.withValues(alpha:0.2)),
  // scaffoldBackgroundColor: Colors.transparent,
  colorScheme: const ColorScheme.dark(),
  // navigationRailTheme: NavigationRailThemeData(
  //   backgroundColor: Colors.transparent,
  //   useIndicator: true,
  //   indicatorColor: Colors.green[400]!,
  //   selectedIconTheme: const IconThemeData(color: Colors.white),
  //   unselectedIconTheme: const IconThemeData(color: Colors.white),
  // ),
  // dataTableTheme: DataTableThemeData(
  //   dataRowColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
  //     if (states.contains(WidgetState.selected)) {
  //       return Colors.green[400]!.withValues(alpha:0.2);
  //     }
  //     return Colors.transparent;
  //   }),
  //   headingRowColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
  //     if (states.contains(WidgetState.selected)) {
  //       return Colors.green[400]!.withValues(alpha:0.2);
  //     }
  //     return Colors.transparent;
  //   }),
  // ),
  // inputDecorationTheme: InputDecorationTheme(
  //   hintStyle: TextStyle(color: Colors.white.withValues(alpha:0.5)),
  //   suffixIconColor: Colors.green[400]!,
  //   filled: true,
  //   fillColor: Colors.white.withValues(alpha:0.1),
  //   border: OutlineInputBorder(
  //     borderRadius: BorderRadius.circular(8),
  //     borderSide: BorderSide.none,
  //   ),
  //   enabledBorder: OutlineInputBorder(
  //     borderRadius: BorderRadius.circular(8),
  //     borderSide: BorderSide.none,
  //   ),
  //   focusedBorder: OutlineInputBorder(
  //     borderRadius: BorderRadius.circular(8),
  //     borderSide: BorderSide(color: Colors.green[400]!, width: 1),
  //   ),
  // ),
  // switchTheme: SwitchThemeData(
  //   thumbColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
  //     if (states.contains(WidgetState.selected)) {
  //       return Colors.green[400]!;
  //     }
  //     return Colors.grey[400]!;
  //   }),
  //   trackColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
  //     if (states.contains(WidgetState.selected)) {
  //       return Colors.green[400]!.withValues(alpha:0.5);
  //     }
  //     return Colors.grey[700]!;
  //   }),
  // ),
  cardTheme: const CardTheme(
    color: Color.fromARGB(255, 78, 70, 80),
  ),
  // expansionTileTheme: ExpansionTileThemeData(
  //   iconColor: Colors.green[400],
  //   collapsedIconColor: Colors.green[400],
  //   backgroundColor: Colors.transparent,
  //   collapsedBackgroundColor: Colors.transparent,
  //   textColor: Colors.white,
  //   collapsedTextColor: Colors.white,
  //   shape: RoundedRectangleBorder(
  //     side: BorderSide.none,
  //     borderRadius: BorderRadius.circular(8),
  //   ),
  // ),
  // chipTheme: ChipThemeData(
  //   backgroundColor: Colors.green[500],
  //   selectedColor: Colors.green[400]!,
  //   shape: const CircleBorder(side: BorderSide.none),
  //   secondarySelectedColor: Colors.green[400]!.withValues(alpha:0.5),
  //   disabledColor: Colors.grey[700]!,
  //   labelStyle: const TextStyle(color: Colors.white),
  //   secondaryLabelStyle: TextStyle(color: Colors.white.withValues(alpha:0.5)),
  // ),
);
