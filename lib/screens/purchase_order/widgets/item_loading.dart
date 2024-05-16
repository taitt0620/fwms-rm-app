import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';

class ItemLoading extends StatelessWidget {
  const ItemLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomRoundedContainer(
      showBorder: true,
      padding: EdgeInsets.all(AppSizes.md),
      // Create your placeholder widget for visual loading state
      child: Column(
        children: [
          SizedBox(width: 80, height: 29), // Placeholder for title
          SizedBox(width: 120, height: 70), // Placeholder for subtitle
        ],
      ),
    );
  }
}
