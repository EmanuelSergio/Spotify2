import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void updateTheme(ThemeMode themeMode) {
    emit(themeMode);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    // Safely restore ThemeMode from persisted index
    try {
      final index = json['themeMode'] as int?;
      if (index == null) return ThemeMode.system;
      return ThemeMode.values[index.clamp(0, ThemeMode.values.length - 1)];
    } catch (_) {
      return ThemeMode.system;
    }
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    // Persist ThemeMode as its enum index
    return {'themeMode': state.index};
  }
}
