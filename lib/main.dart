import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Dashboard'),
        ),
        body: const Center(
          child: Text('Welcome to the Responsive Dashboard!'),
        ),
      )
    );
  }
}

