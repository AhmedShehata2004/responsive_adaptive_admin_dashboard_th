import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/drawer_item_model.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_styles.dart';

class InactiveDrawerItem extends StatelessWidget {
  const InactiveDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.imagePath),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          drawerItemModel.text,
          style: AppStyles.styleRegular16(context),
        ),
      ),
      // Active item color
    );
  }
}
