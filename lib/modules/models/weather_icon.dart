import 'package:diary/config/themes/theme_data.dart';
import 'package:flutter/material.dart';

class WeatherIcon {
  final Text unselected;
  final Text selected;
  bool isSelected;

  WeatherIcon({
    required this.unselected,
    required this.selected,
    this.isSelected = false,
  });

  Text get initialText => isSelected ? selected : unselected;

  void isSwitched() {
    isSelected = !isSelected;
  }

  static TextStyle unselectedTextStyle() {
    return TextStyle(
      fontFamily: 'Noto Emoji',
      fontSize: 22,
      fontVariations: const [FontVariation('wght', 600)],
      color: textSilverColor,
    );
  }

  static TextStyle selectedTextStyle() {
    return const TextStyle(
      fontFamily: 'Noto Color Emoji',
      fontSize: 22,
    );
  }
}
