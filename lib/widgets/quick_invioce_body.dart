import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_styles.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/latest_transction_list_view.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/quick_invoice_form.dart';

class QuickInvoiceBody extends StatelessWidget {
  const QuickInvoiceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
                  'Latest Transaction',
                  style: AppStyles.styleMedium16(context),
                ),
                const SizedBox(height: 16),
                LatestTransctionListView(),
                 Divider(
                        height: 32,
                      ),
                QuickInvoiceForm(),
      ],
    );
  }
}