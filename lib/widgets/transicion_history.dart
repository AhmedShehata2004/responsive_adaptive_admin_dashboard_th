import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_styles.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/transicion_history_list_View.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/transiction_history_header.dart';


class TrasnctionHistory extends StatelessWidget {
  const TrasnctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TansctionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: TextStyle(
            color: Color(0xFFAAAAAA),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        TransctionHistoryListView(),
      ],
    );
  }
}

