import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/screens/enquiry/widgets/item-enquiry.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class EnquiryScreen extends StatefulWidget {
  const EnquiryScreen({super.key});

  @override
  State<EnquiryScreen> createState() => _EnquiryScreenState();
}

class _EnquiryScreenState extends State<EnquiryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: AppColors.white,
        title: Text(
          'Enquiry',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: AppColors.black),
        ),
      ),
      body: Material(
        color: AppColors.backgroundSecondary,
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.md),
          child: GridView(
            // itemCount: 5,
            // shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: AppSizes.gridViewSpacing,
              crossAxisSpacing: AppSizes.gridViewSpacing,
              mainAxisExtent: 80,
            ),
            children: [
              ItemEnquiry(
                icon: Iconsax.box_search,
                title: 'Material',
                onTap: () {},
              ),
              ItemEnquiry(
                icon: Iconsax.document_text,
                title: 'Request',
                onTap: () {},
              ),
              ItemEnquiry(
                icon: Iconsax.box,
                title: 'Purchase Order',
                onTap: () {},
              ),
              ItemEnquiry(
                icon: Iconsax.clipboard_tick,
                title: 'Quality Control Report',
                onTap: () {},
              ),
              ItemEnquiry(
                icon: Iconsax.receipt_search,
                title: 'Good Receipt Note',
                onTap: () {
                  context.push('/good-receipt-note');
                },
              ),
              ItemEnquiry(
                icon: Iconsax.stickynote,
                title: 'Good Issue Note',
                onTap: () {
                  context.push('/good-issue-note');
                },
              ),
              ItemEnquiry(
                icon: Iconsax.calendar_search,
                title: 'Inventory Plan',
                onTap: () {},
              ),
              ItemEnquiry(
                icon: Iconsax.calendar_search,
                title: 'Production Plan',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
