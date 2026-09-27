import 'package:flutter/material.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/user_info_model.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_images.dart';
import 'package:responsive_adaptive_admin_dashboard_th/widgets/user_info_list_tile.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});

  static final List<UserInfoModel> items = [
    UserInfoModel(
      imagePath:AppImages.imagesAvatar1,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      imagePath: AppImages.imagesAvatar2,
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
    ),
    UserInfoModel(
      imagePath: AppImages.imagesAvatar3,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            items
                .map(
                  (e) =>
                      IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
                )
                .toList(),
      ),
    );
  }
}
