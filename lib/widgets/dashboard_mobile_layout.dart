import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/all_expenses_and_quick_invoice.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/income_section.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/my_card_And_transiction_history.dart';


class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AllExpensesAndQuickInvoice(),
            SizedBox(
              height: 24,
            ),
            MyCardAndTransictionHistory(),
            SizedBox(
              height: 24,
            ),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}