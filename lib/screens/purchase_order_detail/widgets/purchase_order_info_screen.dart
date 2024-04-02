import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/screens/purchase_order_detail/widgets/custom_row.dart';
import 'package:fwms_rm_app/screens/purchase_order_detail/widgets/product.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';

class PurchaseOrderInfoScreen extends StatelessWidget {
  const PurchaseOrderInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formattedAmount = AppFormatter.formatCurrency(10000000);
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomRoundedContainer(
            showBorder: true,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage(AppImages.iconSupplier),
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 8),
                    Text(
                      AppTexts.purchaseOrderDetailInfo,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                CustomLine(
                  titleText: AppTexts.poCode,
                  detailText: '10076',
                ),
                SizedBox(height: 16),
                CustomLine(
                  titleText: AppTexts.fax,
                  detailText: '554-3445',
                ),
                SizedBox(height: 16),
                CustomLine(
                  titleText: AppTexts.address,
                  detailText: '554 Street',
                ),
                SizedBox(height: 16),
                CustomLine(
                  titleText: AppTexts.staff,
                  detailText: 'Nguyen Van A',
                ),
                SizedBox(height: 16),
                CustomLine(
                  titleText: AppTexts.date,
                  detailText: '8 March 2024',
                ),
                SizedBox(height: 16),
                CustomLine(
                  titleText: AppTexts.notes,
                  detailText: 'No comments',
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          CustomRoundedContainer(
            showBorder: true,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 3, bottom: 3),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage(AppImages.iconSupplier),
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(width: 8),
                      Text(
                        AppTexts.supplierName,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppColors.black.withOpacity(0.2),
                  height: 1,
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 350,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: 20,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Product(),
                                  SizedBox(height: 16),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: AppColors.black.withOpacity(0.2),
                  height: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 3, bottom: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppTexts.totalPrice,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'đ $formattedAmount',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ),
                // CustomRow(titleText: 'ID', detailText: 'PO-12345'),
                // SizedBox(height: 16),
                // CustomRow(titleText: 'ID', detailText: 'PO-12345'),
                // SizedBox(height: 16),
                // CustomRow(titleText: 'ID', detailText: 'PO-12345'),
                // SizedBox(height: 16),
                // CustomRow(titleText: 'ID', detailText: 'PO-12345'),
                // SizedBox(height: 16),
              ],
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Xác nhận'),
            ),
          ),
        ],
      ),
    );
  }
}
