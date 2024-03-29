import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';

class loginHeader extends StatelessWidget {
  const loginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(AppImages.logo),
        ),
        Text(
          AppTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: AppSizes.sm),
        Text(
          AppTexts.sloganTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
