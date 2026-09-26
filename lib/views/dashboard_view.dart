import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/adaptive_layout.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );

  }
}