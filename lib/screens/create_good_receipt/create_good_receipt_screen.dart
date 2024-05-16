import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/common/widgets/qrscan_button.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class CreateGoodReceiptScreen extends StatefulWidget {
  const CreateGoodReceiptScreen({super.key});

  @override
  State<CreateGoodReceiptScreen> createState() =>
      _CreateGoodReceiptScreenState();
}

class _CreateGoodReceiptScreenState extends State<CreateGoodReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Create Good Receipt',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: AppColors.black),
        ),
        showBackArrow: true,
        onBackArrowPressed: () {
          context.pop();
        },
      ),
      body: const SizedBox(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: QRScanFloatingActionButton(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.4,
        borderRadius: 100,
        onPressed: () async {
          await context.push('/qrscan');
        },
        backgroundColor: AppColors.primary,
        child: Container(
          padding: const EdgeInsets.only(left: AppSizes.lg, right: AppSizes.md),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text(
                  'Scan QR',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: AppColors.white),
                ),
              ),
              // const SizedBox(width: AppSizes.sm),
              const Icon(
                Iconsax.scan_barcode,
                size: 24,
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
