import 'package:flutter/material.dart';

/// Строки приложения

class AppStrings {
  static const petName = 'Имя питомца';
  static const petBirsday = 'День рождения питомца';
  static const petWeight = 'Вес, кг';
  static const email = 'Почта хозяина';
  static const vaccinations = 'Сделаны прививки от:';
  static const rabies = 'бешенства';
  static const covid = 'ковида';
  static const malaria = 'малярии';
  static const dateVaccinations = 'Дата последней прививки';
  static const buttonSend = 'Отправить';
}

/// Цвета приложения

class AppColors {
  static const colorBly = Color(0xFF414657);
  static const colorGrayText = Color(0xFFAFB2BC);
  static const colorwhite = Color(0xFFFFFFFF);
  static const colorPink = Color(0xFFff8087);
  static const colorGray = Color(0xFFeaeceb);
  static const colorLigthBly = Color(0xFFd3d5d8);
  static const colorLightRed = Color(0xFFfd4c56);
}

/// Стили приложения

class AppTypography {
  static const text12Regular = TextStyle(
    fontSize: 12.0,
    height: 1.25,
    fontWeight: FontWeight.w400,
  );
  static const text16Regular = TextStyle(
    fontSize: 16.0,
    height: 1.25,
    fontWeight: FontWeight.w400,
  );
  static const text18Bold = TextStyle(
    fontSize: 18.0,
    height: 1.25,
    fontWeight: FontWeight.w600,
  );
  static const text24Bold = TextStyle(
    fontSize: 24.0,
    height: 1.25,
    fontWeight: FontWeight.w600,
  );
}
