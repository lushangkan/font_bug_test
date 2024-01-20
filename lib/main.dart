import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
          fontFamily: 'MiSans'
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  
  @override
  Widget build(BuildContext context) {
    var defTheme = Theme.of(context);

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'For test - woff',
              style: TextStyle(
                  fontFamily: 'MiSans',
                  fontVariations: [
                    FontVariation('wght', 900.00)
                  ]
              ),
            ),
            Text(
                'For test - ttf',
                style: TextStyle(
                  fontFamily: 'MiSans TTF',
                  fontVariations: [
                    FontVariation('wght', 900.00)
                  ],
                )
            )
          ],
        ),
      )
    );
  }
}
