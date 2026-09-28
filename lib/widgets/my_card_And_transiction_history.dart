import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/custom_container.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/my_card_section.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/transicion_history.dart';

class MyCardAndTransictionHistory extends StatelessWidget {
  const MyCardAndTransictionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: Column(
        children: [
          MyCardsSection(),
          Divider(height: 10, color: Color(0xffF1F1F1)),
          TrasnctionHistory(),
        ],
      ),
    );
  }
}
