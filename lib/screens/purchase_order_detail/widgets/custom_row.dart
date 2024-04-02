import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  const CustomLine(
      {super.key, required this.titleText, required this.detailText});
  final String titleText;
  final String detailText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Text(
            titleText,
            style: Theme.of(context).textTheme.bodySmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          child: Text(
            detailText,
            style: Theme.of(context).textTheme.bodyLarge,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
