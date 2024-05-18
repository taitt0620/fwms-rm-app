import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class GoodIssueScreen extends StatefulWidget {
  const GoodIssueScreen({super.key});

  @override
  State<GoodIssueScreen> createState() => _GoodIssueScreenState();
}

class _GoodIssueScreenState extends State<GoodIssueScreen> {
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
                await context.push('/good-issue-note-create');
              },
              child: const Text('Navigate Test'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Good Issue Note',
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
      body: Center(
        child: Text('Good Issue Screen',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        child: const Icon(Iconsax.add, size: 24, color: AppColors.white),
        onPressed: () {
          _showBottomSheet(context);
        },
      ),
    );
  }
}
