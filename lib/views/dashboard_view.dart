import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/size_config.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/adaptive_layout.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      key: scaffoldKey,
      appBar:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet
              ? AppBar(
                elevation: 0,
                backgroundColor: const Color(0xFFFAFAFA),
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )
              : null,
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet
              ? SizedBox(
                width: MediaQuery.sizeOf(context).width*.7,
                child: const CustomDrawer())
              : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
