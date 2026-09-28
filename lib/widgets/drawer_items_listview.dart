import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/drawer_item_model.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_images.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/drawer_item.dart';

class DrawerItemsListview extends StatefulWidget {
  const DrawerItemsListview({super.key});

  @override
  State<DrawerItemsListview> createState() => _DrawerItemsListviewState();
}

class _DrawerItemsListviewState extends State<DrawerItemsListview> {
  List<DrawerItemModel> drawerItems = [
    DrawerItemModel(imagePath: AppImages.imagesDashboard, text: 'Dashboard'),
    DrawerItemModel(imagePath: AppImages.imagesMyTransctions, text: 'My Transactions'),
    DrawerItemModel(imagePath: AppImages.imagesStatistics, text: 'Statistics'),
    DrawerItemModel(imagePath: AppImages.imagesWalletAccount, text: 'Wallet Account'),
    DrawerItemModel(imagePath: AppImages.imagesMyInvestments, text: 'My Investments'),
  ];

  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              activeIndex = index;
              setState(() {});
            }
          },
          child: DrawerItem(
            isActive: activeIndex == index,
            drawerItemModel: drawerItems[index],
          ),
        );
      },
    );
  }
}
