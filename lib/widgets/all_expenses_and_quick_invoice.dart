import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/Custom_Container.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/all_expenses_body.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/all_expenses_header.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/quick_invioce_body.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/quick_invoice_header.dart';

class AllExpensesAndQuickInvoice extends StatelessWidget {
  const AllExpensesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainer(
                  widget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AllExpensesHeader(),
                    
                     AllExpensesBody(),
                     ],
                  ),
                ),
                SizedBox(height: 24),
                CustomContainer(
                  widget: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [QuickInvoiceHeader(),
                     SizedBox(
                      height: 16,
                     ),
                       QuickInvoiceBody()],
                    ),
                  ),
                ),
              ],
            );
  }
}