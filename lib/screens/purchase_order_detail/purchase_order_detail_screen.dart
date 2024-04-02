import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/screens/purchase_order_detail/widgets/purchase_order_info_screen.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';

class PurchaseOrderDetailScreen extends StatefulWidget {
  const PurchaseOrderDetailScreen({super.key, required this.id});
  final String? id;
  @override
  State<PurchaseOrderDetailScreen> createState() =>
      _PurchaseOrderDetailScreenState();
}

class _PurchaseOrderDetailScreenState extends State<PurchaseOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomAppBar(
          title: Text(
            AppTexts.homeTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: AppColors.black),
          ),
          showBackArrow: true,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: PurchaseOrderInfoScreen(),
          ),
        ),
      ],
    );
  }
}
