import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_admin_dashboard_th/models/user_info_model.dart';
import 'package:responsive_adaptive_admin_dashboard_th/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
   required this.userInfoModel ,
  });
  final UserInfoModel userInfoModel ;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      color: const Color(0xFFF5F5F5),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.imagePath, width: 40, height: 40),
        title: Text(userInfoModel.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(
          userInfoModel.subtitle,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: const Color(0xFFAAAAAA)),
        ),
      ),
    );
  }
}
