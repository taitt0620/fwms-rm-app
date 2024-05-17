import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    this.icon = Iconsax.copy,
    this.onPressed,
    required this.title,
    required this.value,
    this.showActionIcon = false,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final String title, value;
  final bool showActionIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
              flex: 5,
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: value == 'Online'
                          ? AppColors.green
                          : value == 'Offline'
                              ? AppColors.error
                              : AppColors.black,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: showActionIcon
                  ? Icon(
                      icon,
                      size: 18,
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
