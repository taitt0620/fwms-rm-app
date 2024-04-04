import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';

class Product extends StatelessWidget {
  const Product(
      {super.key,
      required this.materialName,
      required this.unit,
      required this.quantity,
      required this.subTotal,
      required this.unitPrice});
  final String materialName;
  final String unit;
  final int quantity;
  final double subTotal;
  final double unitPrice;
  @override
  Widget build(BuildContext context) {
    final formattedAmount = AppFormatter.formatCurrency(this.subTotal);
    final formattedUnitPrice = AppFormatter.formatCurrency(this.unitPrice);
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Image(
            image: AssetImage(AppImages.imageNotAvailable),
            width: 60,
            height: 60,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    materialName,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${AppTexts.unit}: $unit',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    'đ $formattedUnitPrice',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quantity: x$quantity',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    'đ $formattedAmount',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
