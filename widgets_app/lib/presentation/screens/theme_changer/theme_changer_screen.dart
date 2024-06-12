import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/themeprovider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  static const name = 'theme_changer_screen';

  @override
  Widget build(BuildContext context, ref) {
    final isDarkMode = ref.watch(isDarkModeProvider); 
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme changer'),
        actions: [
          IconButton(
            onPressed: (){
              ref.read(isDarkModeProvider.notifier).update((state) => !state);
            }, 
            icon: isDarkMode ? Icon(Icons.dark_mode) : Icon(Icons.sunny) 
          )
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final colorsList =ref.watch(colorListprovider);
    final colorsSelect =ref.watch(selectedColorProvider);
    return ListView.builder(
      itemCount: colorsList.length,
      itemBuilder: (context, index) {
        final color = colorsList[index];
        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color),),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: colorsSelect, 
          onChanged: (value) {
            // Todo:  notificar el cambio a algun lugar 
            ref.read(selectedColorProvider.notifier).state = value!;
          },
        );
      },
    );
  }
}