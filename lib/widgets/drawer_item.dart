
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/drawer_item_model.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/active_drawer_item.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/inactive_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.isActive, required this.drawerItemModel});

  final bool isActive;
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrawerItem(
      drawerItemModel: drawerItemModel ,
    ) :  InactiveDrawerItem(
      drawerItemModel: drawerItemModel ,
    );
  }
}