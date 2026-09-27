import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/Custom_Container.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/all_expenses_body.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/all_expenses_header.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/income_section.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/my_card.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/my_card_section.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/quick_invioce_body.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/quick_invoice_header.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/transicion_history.dart';

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
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainer(
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [AllExpensesHeader(), AllExpensesBody()],
                  ),
                ),
                SizedBox(height: 24),
                CustomContainer(
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [QuickInvoiceHeader(), QuickInvoiceBody()],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 24),
          Expanded(
            child: Column(
            children: [
              MyCardsSection(),
              TrasnctionHistory(),
              // TransctionHistoryListView(),
              IncomeSection(),
            ],
          )),
        ],
      ),
    );
  }
}
