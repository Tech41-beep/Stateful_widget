import 'package:flutter/material.dart';
import 'package:flutter_stateful/exercise_01/widgets/btn_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              SelectedButton(),
              SizedBox(height: 12),
              SelectedButton(),
              SizedBox(height: 12),
              SelectedButton(),
            ],
          ),
        ),
      ),
    );
  }
}
