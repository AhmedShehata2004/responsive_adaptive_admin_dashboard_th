import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/Custom_Container.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/income%20_section_body.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/income_Section_header.dart';


class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        widget: Column(
      children: [IncomeSectionHeader(), IncomSectionBody()],
    ));
  }
}