import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 24),
          Expanded(flex: 3, child: DashBoardMobileLayout()),
        ],
      ),
    );
  }
}
