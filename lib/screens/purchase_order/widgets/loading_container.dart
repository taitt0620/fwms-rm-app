import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';

class LoadingItem extends StatelessWidget {
  const LoadingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      showBorder: true,
      padding: EdgeInsets.all(AppSizes.md),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              //image
              Image(
                  image: AssetImage(AppImages.iconTruck),
                  width: 24,
                  height: 24),
              SizedBox(width: 8),
              //Status and Date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppTexts.deliveryDate,
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'unknown',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image(
                  image: AssetImage(AppImages.iconForward),
                  width: AppSizes.md,
                  height: AppSizes.md,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.md),
          // Row 2
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    //image
                    Image(
                      image: AssetImage(AppImages.iconTag),
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 8),
                    //Status and Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppTexts.code,
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'unknown',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    //image
                    Image(
                        image: AssetImage(AppImages.iconSupplier),
                        width: 24,
                        height: 24),
                    SizedBox(width: 8),
                    //Supplier
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppTexts.supplier,
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            'unknown',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
