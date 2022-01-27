import 'package:custom_theme/notifier/theme_notifier.dart';
import 'package:custom_theme/theme/app_theme.dart';
import 'package:custom_theme/theme/app_theme_light.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider<ThemeNotifier>(
        create: (_) => ThemeNotifier(),
      ),
    ], child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.watch<ThemeNotifier>().currentTheme,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: const Text('Hello World'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.read<ThemeNotifier>().changeTheme(),
        ),
      ),
    );
  }
}
