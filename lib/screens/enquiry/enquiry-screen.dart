import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';

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
          'Setting',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: AppColors.black),
        ),
      ),
      body: Center(
        child: Text(
          'Enquiry Screen',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
