import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/screens/purchase_order_detail/widgets/purchase_order_info_screen.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';
import 'package:go_router/go_router.dart';

class PurchaseOrderDetailScreen extends StatefulWidget {
  const PurchaseOrderDetailScreen({super.key, this.id});
  final String? id;
  @override
  State<PurchaseOrderDetailScreen> createState() =>
      _PurchaseOrderDetailScreenState();
}

class _PurchaseOrderDetailScreenState extends State<PurchaseOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          AppTexts.purchaseOrderDetailTitle,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: AppColors.black),
        ),
        showBackArrow: true,
        onBackArrowPressed: () {
          GoRouter.of(context).go('/');
        },
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.md),
              child: PurchaseOrderInfoScreen(
                id: widget.id,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
