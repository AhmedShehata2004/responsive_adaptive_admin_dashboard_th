import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/drawer_item_model.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/user_info_model.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_images.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/drawer_bottom_section.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/drawer_items_listview.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/inactive_drawer_item.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: Column(
        children: [
          const SizedBox(height: 20),
          UserInfoListTile(
            userInfoModel: UserInfoModel(
              imagePath: AppImages.imagesAvatar2,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          DrawerItemsListview(),
          Expanded(child: SizedBox()),
          DrawerBottomSection(),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
