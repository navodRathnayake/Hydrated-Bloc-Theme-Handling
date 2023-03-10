import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_mode_state.dart';

class ThemeModeCubit extends HydratedCubit<ThemeModeState> {
  ThemeModeCubit() : super(const ThemeModeState.lightMode());

  void toggleSwitchChanged(bool isOn) {
    switch (isOn) {
      case true:
        emit(const ThemeModeState.lightMode());
        debugPrint('Light mode has activated');
        break;
      case false:
        emit(const ThemeModeState.darkMode());
        debugPrint('dark mode has activated');
    }
  }

  @override
  ThemeModeState? fromJson(Map<String, dynamic> json) {
    return ThemeModeState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(ThemeModeState state) {
    return state.toMap();
  }
}
