import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/size_config.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/detailed_income_section.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/income_chart.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/income_details.dart';


class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          )
        : const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(),
          ));
  }
}