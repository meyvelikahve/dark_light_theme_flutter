import 'package:custom_theme/notifier/theme_notifier.dart';
import 'package:custom_theme/view/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider<ThemeNotifier>(
        create: (_) => ThemeNotifier(),
      ),
    ], child: const MyApp()));
