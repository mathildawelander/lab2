import 'package:flutter/material.dart';
import 'package:lab2/theme/colors.dart';

class AppTheme{
static const colors = AppColors();

const AppTheme._();

static ThemeData define(){
return ThemeData(
fontFamily: 'Lato',
primaryColor: colors.lightGreen,
secondaryHeaderColor: colors.bathroomIconBackground,
);
}

}