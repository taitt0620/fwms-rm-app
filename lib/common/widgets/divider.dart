import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/helpers/app_helper.dart';

class CustomDivider extends Divider implements PreferredSizeWidget {
  CustomDivider({
    Key? key,
    height = 16.0,
    indent = 0.0,
    color,
  })  : assert(height >= 0.0),
        super(
          key: key,
          height: height,
          indent: indent,
          color: color,
        );

  @override
  Size get preferredSize => Size(double.infinity, AppHelper.getAppBarHeight());
}
