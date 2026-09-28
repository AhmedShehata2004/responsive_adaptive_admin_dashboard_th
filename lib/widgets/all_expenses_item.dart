import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/all_expenses_item_model.dart';
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
      decoration: ShapeDecoration(
        color: isActive ? const Color(0xFF4EB7F2) : const Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 50,),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: SvgPicture.asset(
                       allExpensesItemModel.imagePath,
                        color: isActive ? Colors.white : Colors.black,
                                     
                      ),
                    ),
                  ),
                ),
                Expanded(child: SizedBox()),
                Transform.rotate(
                  angle: -3.14 / 2,
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: isActive ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  alignment: AlignmentDirectional.centerStart,
                  fit: BoxFit.scaleDown,
                  child: Text(
                    allExpensesItemModel.text,
                    style:
                        isActive
                            ? AppStyles.styleSemiBold16(
                              context,
                            ).copyWith(color: Colors.white)
                            : AppStyles.styleSemiBold16(context),
                  ),
                ),
                SizedBox(height: 4),

                FittedBox(
                  alignment: AlignmentDirectional.centerStart,
                  fit: BoxFit.scaleDown,
                  child: Text(
                    allExpensesItemModel.date,
                    style:
                        isActive
                            ? AppStyles.styleRegular14(
                              context,
                            ).copyWith(color: Colors.white)
                            : AppStyles.styleRegular14(context),
                  ),
                ),
                SizedBox(height: 16),
                FittedBox(
                  alignment: AlignmentDirectional.centerStart,
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "\$ ${allExpensesItemModel.price}",
                    style:
                        isActive
                            ? AppStyles.styleSemiBold24(
                              context,
                            ).copyWith(color: Colors.white)
                            : AppStyles.styleSemiBold24(context),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
