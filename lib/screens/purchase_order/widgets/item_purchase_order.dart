import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/purchase_order/models/purchase_order.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';
import 'package:go_router/go_router.dart';

class ItemPurchaseOrder extends StatelessWidget {
  const ItemPurchaseOrder({
    super.key,
    required this.po,
  });

  final PurchaseOrder po;

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(AppSizes.md),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              //image
              const Image(
                  image: AssetImage(AppImages.iconTruck),
                  width: 24,
                  height: 24),
              const SizedBox(width: AppSizes.md),

              //Status and Date
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppFormatter.addSpaces(po.status),
                      style: Theme.of(context).textTheme.titleLarge!.apply(
                            color: po.status == 'Unfinished'
                                ? Colors.blue
                                : po.status == 'InProgress'
                                    ? Colors.yellow
                                    : po.status == 'Done'
                                        ? Colors.green
                                        : Colors.black,
                          ),
                    ),
                    Text(
                      AppFormatter.formatDate(po.date),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  // context.goNamed('purchase-order-detail',
                  //     pathParameters: {'id': po.id!});
                  context.push('/purchase-order-detail?id=${po.id}');
                },
                icon: const Image(
                  image: AssetImage(AppImages.iconForward),
                  width: AppSizes.md,
                  height: AppSizes.md,
                ),
              ),
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
                    const Image(
                      image: AssetImage(AppImages.iconTag),
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: AppSizes.md),
                    //Status and Date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppTexts.code,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            po.poCode,
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
                    const Image(
                        image: AssetImage(AppImages.iconSupplier),
                        width: 24,
                        height: 24),
                    const SizedBox(width: AppSizes.md),
                    //Supplier
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppTexts.supplier,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            po.supplier,
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
    );
  }
}
