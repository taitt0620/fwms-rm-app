import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.onTap,
    required this.showBackground,
    required this.showBorder,
    this.padding =
        const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
  });

  final String text;
  final AssetImage? icon;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: getScreenWidth(context),
          padding: const EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            color: AppColors.transparent,
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
            border: showBorder
                ? Border.all(color: AppColors.black.withOpacity(0.3))
                : null,
          ),
          child: Row(
            children: [
              Image(
                image: icon ?? AssetImage(AppImages.iconSearch),
                color: AppColors.black,
              ),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: AppColors.darkerGrey,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
