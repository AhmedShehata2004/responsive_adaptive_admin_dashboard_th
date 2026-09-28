import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/views/dashboard_view.dart';

void main() {
  runApp(
    const ResponsiveDashBoard(),
    // DevicePreview(builder: (context) => const ResponsiveDashBoard()),
    );
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});
  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.sizeOf(context).width;

    // print('Screen Width: $width');
    return MaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const DashboardView(),
    );
  }
}
