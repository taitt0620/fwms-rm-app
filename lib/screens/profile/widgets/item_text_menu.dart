import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';

class ItemTextMenu extends StatelessWidget {
  const ItemTextMenu({
    super.key,
    required this.controller,
    required this.title,
    required this.hintText,
    required this.errorText,
    this.keyboardType,
  });

  final TextEditingController controller;
  final String title, hintText, errorText;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: ' *',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w400, color: AppColors.primary),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 2),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType ?? TextInputType.text,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: AppColors.textSecondary),
          ),
          onSaved: (newValue) => controller.text = newValue!,
          validator: (value) {
            if (value!.isEmpty || value.trim().isEmpty) {
              return errorText;
            }
            return null;
          },
        ),
      ],
    );
  }
}
