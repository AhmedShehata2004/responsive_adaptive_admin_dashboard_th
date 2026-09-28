import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_styles.dart';

class TansctionHistoryHeader extends StatelessWidget {
  const TansctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            'Transaction History',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            'See all',
            style: AppStyles.styleMedium16(context).copyWith(
              color: const Color(0xFF4EB7F2),
            ),
          ),
        )
      ],
    );
  }
}