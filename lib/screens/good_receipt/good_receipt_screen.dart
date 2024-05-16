import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class GoodReceiptScreen extends StatefulWidget {
  const GoodReceiptScreen({super.key});

  @override
  State<GoodReceiptScreen> createState() => _GoodReceiptScreenState();
}

class _GoodReceiptScreenState extends State<GoodReceiptScreen> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        elevation: 0,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.5,
        ),
        context: context,
        builder: (builder) {
          return Column(
            children: [
              Container(
                height: 200,
                color: Colors.amber,
                child: const Center(
                  child: Text('Hello from Bottom Sheet'),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              ElevatedButton(
                onPressed: () async {
                  await context.push('/good-receipt-create');
                },
                child: const Text('Navigate Test'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Good Receipt',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: AppColors.black),
        ),
        showBackArrow: false,
      ),
      body: Center(
        child: Text('Good Receipt Screen',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Iconsax.add),
        onPressed: () {
          _showBottomSheet(context);
        },
      ),
    );
  }
}
