import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/quality_control_report/models/quality_control_report.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class ItemQualityControlReport extends StatelessWidget {
  const ItemQualityControlReport({super.key, required this.qcr});

  final QualityControlReport qcr;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/quality-control-report-detail?id=${qcr.id}');
      },
      child: CustomRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(AppSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                //image
                const Icon(Iconsax.truck,
                    size: AppSizes.iconMd, color: AppColors.black),
                const SizedBox(width: AppSizes.md),

                //Status and Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppFormatter.addSpaces(qcr.conclude),
                        style: Theme.of(context).textTheme.titleLarge!.apply(
                              color: qcr.conclude == 'NotAchieved'
                                  ? AppColors.primary
                                  : qcr.conclude == 'Obtain'
                                      ? AppColors.green
                                      : AppColors.black,
                            ),
                      ),
                      Text(
                        AppFormatter.formatDate(qcr.inspectionDate),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {
                      // context.goNamed('purchase-order-detail',
                      //     pathParameters: {'id': po.id!});
                      // context.push('/purchase-order-detail?id=${po.id}');
                    },
                    icon: const Icon(
                      Iconsax.arrow_right_3,
                      size: AppSizes.iconMd,
                      color: AppColors.black,
                    )),
              ],
            ),
            const SizedBox(height: AppSizes.md),
            // Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      //image
                      const Icon(Iconsax.tag,
                          size: AppSizes.iconMd, color: AppColors.black),
                      const SizedBox(width: AppSizes.md),
                      //Po code and phase
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PO Code',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              qcr.poCode,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
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
                      const Icon(Iconsax.receipt,
                          size: AppSizes.iconMd, color: AppColors.black),
                      const SizedBox(width: AppSizes.md),
                      //Supplier
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Phase',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              qcr.phase.toString(),
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
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
      ),
    );
  }
}
