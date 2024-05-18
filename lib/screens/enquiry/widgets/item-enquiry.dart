import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';

class ItemEnquiry extends StatelessWidget {
  const ItemEnquiry(
      {super.key,
      required this.icon,
      required this.title,
      this.color = AppColors.primary, this.onTap});

  final IconData icon;
  final String title;
  final Color? color;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomRoundedContainer(
        width: double.infinity,
        radius: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28, color: color),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            Text(title, style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
      ),
    );
  }
}
