import 'package:flutter/material.dart';
import 'dart:js_interop';

@JS()
external void toggle3DViewer(bool active);

class Viewer3DPage extends StatefulWidget {
  const Viewer3DPage({super.key});

  @override
  State<Viewer3DPage> createState() => _Viewer3DPageState();
}

class _Viewer3DPageState extends State<Viewer3DPage> {
  @override
  void initState() {
    super.initState();
    // Ativar o viewer 3D
    toggle3DViewer(true);
  }

  @override
  void dispose() {
    // Desativar o viewer 3D ao voltar
    toggle3DViewer(false);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Visualização 3D'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const SizedBox.expand(),
    );
  }
}
