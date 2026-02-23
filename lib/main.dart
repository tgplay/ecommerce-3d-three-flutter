import 'package:flutter/material.dart';
import 'pages/product_page.dart';
import 'pages/viewer_3d_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce 3D',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const ProductPage(),
      routes: {
        '/viewer3d': (context) => const Viewer3DPage(),
      },
    );
  }
}
