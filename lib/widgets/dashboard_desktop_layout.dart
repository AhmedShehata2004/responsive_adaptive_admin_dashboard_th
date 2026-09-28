import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/Custom_Container.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/income_section.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/my_card_And_transiction_history.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(child: CustomDrawer()),

          SizedBox(width: 24),

          Expanded(flex: 2, child: AllExpensesAndQuickInvoice()),

          SizedBox(width: 24),

          Expanded(
            child: CustomContainer(
              widget: Column(
                children: [MyCardAndTransictionHistory(), IncomeSection()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
