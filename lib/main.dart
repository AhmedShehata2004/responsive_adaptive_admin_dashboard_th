import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboardView(),
    );
  }
}
