import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class DelightfulToastHelper {
  static void success(BuildContext context, String title, String subtitle) {
    DelightToastBar(
      autoDismiss: true,
      position: DelightSnackbarPosition.top,
      builder: (context) => ToastCard(
        color: AppColors.green,
        leading: const Icon(
          Iconsax.tick_circle,
          size: 28,
          color: AppColors.white,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColors.textWhite,
              ),
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.textWhite,
              ),
        ),
        // trailing: const Icon(
        //   Iconsax.close,
        //   size: 28,
        // ),
      ),
      snackbarDuration: const Duration(seconds: 3),
    ).show(context);
  }

  static void error(BuildContext context, String title, String subtitle) {
    DelightToastBar(
      autoDismiss: true,
      position: DelightSnackbarPosition.top,
      builder: (context) => ToastCard(
        color: AppColors.error,
        leading: const Icon(
          Iconsax.close_circle,
          size: 28,
          color: AppColors.white,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColors.textWhite,
              ),
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.textWhite,
              ),
        ),
      ),
      snackbarDuration: const Duration(seconds: 3),
    ).show(context);
  }

  static void warning(BuildContext context, String title, String subtitle) {
    DelightToastBar(
      autoDismiss: true,
      position: DelightSnackbarPosition.top,
      builder: (context) => ToastCard(
        color: AppColors.info,
        leading: const Icon(
          Iconsax.warning_2,
          size: 28,
          color: AppColors.white,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColors.textWhite,
              ),
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.textWhite,
              ),
        ),
        // trailing: const Icon(
        //   Iconsax.close_circle,
        //   size: 28,
        //   color: AppColors.white,
        // ),
      ),
      snackbarDuration: const Duration(seconds: 3),
    ).show(context);
  }

  static void toast(BuildContext context, String title, String subtitle) {
    DelightToastBar(
      autoDismiss: true,
      position: DelightSnackbarPosition.top,
      builder: (context) => ToastCard(
        color: AppColors.white,
        leading: const Icon(
          Iconsax.warning_2,
          size: 28,
          color: AppColors.black,
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: AppColors.textPrimary,
              ),
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.textPrimary,
              ),
        ),
        // trailing: const Icon(
        //   Iconsax.close_circle,
        //   size: 28,
        //   color: AppColors.white,
        // ),
      ),
      snackbarDuration: const Duration(seconds: 3),
    ).show(context);
  }
}
