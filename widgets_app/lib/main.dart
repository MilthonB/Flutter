import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/router/app_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/providers/themeprovider.dart';

void main() {
  runApp(
    ProviderScope(child: const MainApp())
    );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    final selectcolor = ref.watch(selectedColorProvider);
    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: selectcolor, isDarkMode: isDarkMode).getTheme(),
      
    );
  }
}

