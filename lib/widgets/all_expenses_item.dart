import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_images.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isActive,
  });
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF4EB7F2) : const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppImages.imagesBalance,
                    color: isActive ? Colors.white : Colors.black,
                  ),
                  Spacer(),
                  Transform.rotate(
                    angle: -3.14 / 2,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: isActive ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  allExpensesItemModel.text,
                  style:
                      isActive
                          ? AppStyles.styleSemiBold16(
                            context,
                          ).copyWith(color: Colors.white)
                          : AppStyles.styleSemiBold16(context),
                ),
                SizedBox(height: 4),

                Text(
                  allExpensesItemModel.date,
                  style:
                      isActive
                          ? AppStyles.styleRegular14(
                            context,
                          ).copyWith(color: Colors.white)
                          : AppStyles.styleRegular14(context),
                ),
                SizedBox(height: 16),
                Text(
                  "${allExpensesItemModel.price}\$",
                  style:
                      isActive
                          ? AppStyles.styleSemiBold24(
                            context,
                          ).copyWith(color: Colors.white)
                          : AppStyles.styleSemiBold24(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
