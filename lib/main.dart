import 'dart:async';

import 'package:camera/camera.dart';
import 'package:camera_effect_editor/camera_widget.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // Fetch the available cameras before initializing the app.
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    logError(e.code, e.description);
  }
  runApp(const CameraApp());
}

/// CameraApp is the Main Application.
class CameraApp extends StatelessWidget {
  /// Default Constructor
  const CameraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CameraWidget(),
    );
  }
}