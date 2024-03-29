import 'package:flutter/material.dart';
import 'package:fwms_rm_app/config/theme/app_pallete.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.title,
      required this.showLeading,
      required this.showAction});

  final String title;
  final bool showLeading;
  final bool showAction;

  Widget _buildLeadingWidget() {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {},
    );
  }

  Widget _buildActionWidget() {
    return IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: showLeading ? _buildLeadingWidget() : null,
      title: Text(title),
      actions: [
        showAction ? _buildActionWidget() : SizedBox(),
      ],
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 1.0),
        child: Container(
          color: AppPallete.blackColor.withOpacity(0.2),
          height: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 54);
}
