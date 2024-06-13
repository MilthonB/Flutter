

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

StateProvider<bool> isDarkModeProvider = StateProvider((ref) => true);


// provider inmtable estado de colores inmutables 
final colorListprovider = Provider((ref) => colorList);
final selectedColorProvider =  StateProvider((ref) => 0);


// Un objecto de tipo AppTheme (Custome)

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
);


//Controllers o notifier
class ThemeNotifier extends StateNotifier<AppTheme>{
  //State =  esta
  ThemeNotifier(): super(AppTheme()); 

  


}