import 'package:custom_theme/notifier/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

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
        body: const Center(
          child: Text('Hello World'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          label: const Text("Change Theme"),
          elevation: 10,
          onPressed: () => context.read<ThemeNotifier>().changeTheme(),
        ),
      ),
    );
  }
}
