import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';
import 'package:toktik/providers/discover_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider( 
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadingNextPage()
        )
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(1).getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}