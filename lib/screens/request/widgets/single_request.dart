import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';

class SingleRequest extends StatelessWidget {
  const SingleRequest({super.key, required this.selectedRequest});

  final bool selectedRequest;
  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedRequest
          ? AppColors.primary.withOpacity(0.5)
          : AppColors.transparent,
      padding: EdgeInsets.all(AppSizes.md),
      margin: EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedRequest ? Icons.check_circle : null,
              color: AppColors.light,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title',
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: AppSizes.sm / 2),
              Text(
                'Related Information',
                style: Theme.of(context).textTheme.titleSmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: AppSizes.sm / 2),
              Text(
                'Status',
                style: Theme.of(context).textTheme.titleSmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
