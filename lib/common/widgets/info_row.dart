import 'package:flutter/material.dart';

class AdvancedInfoRow extends StatelessWidget {
  const AdvancedInfoRow({
    super.key,
    required this.title,
    required this.value,
  });
  final String? title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  title!,
                  style: Theme.of(context).textTheme.bodyLarge,
                )),
                Container(
                  height: 20,
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    value == null || value!.trim().isEmpty ? 'N/A' : value!,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textDirection: TextDirection.rtl,
                    maxLines: (title == 'Notes' || title == 'Comments') ? 5 : 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
