import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/Custom_Container.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/all_expenses_body.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/all_expenses_header.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(
          flex: 3,
          child: CustomContainer(
            widget: Column(
              children:[
                AllExpensesHeader(),
                AllExpensesBody(),
              ],
            ),
        ),
        ),
      ],
    
    );
  }
}