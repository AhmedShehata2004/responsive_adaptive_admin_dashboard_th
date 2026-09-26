import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/drawer_item_model.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_images.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/inactive_drawer_item.dart';

class DrawerBottomSection extends StatelessWidget {
  const DrawerBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InactiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            imagePath: AppImages.imagesSettings,
            text: 'Settings',
          ),
        ),

        InactiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            imagePath: AppImages.imagesLogout,
            text: 'Logout account',
          ),
        ),
      ],
    );
  }
}
