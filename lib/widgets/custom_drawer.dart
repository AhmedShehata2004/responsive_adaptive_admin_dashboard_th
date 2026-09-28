import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/user_info_model.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_images.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/custom_container.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/drawer_bottom_section.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/drawer_items_listview.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      widget: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                  imagePath: AppImages.imagesAvatar2,
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com',
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          DrawerItemsListview(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                DrawerBottomSection(),
                SizedBox(height: 36),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
