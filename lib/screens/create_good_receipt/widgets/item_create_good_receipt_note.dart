import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/info_row.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/models/create_good_receipt_note.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';

class ItemCreateGoodReceiptNote extends StatefulWidget {
  const ItemCreateGoodReceiptNote({super.key, required this.note});

  final CreateGoodReceiptNote note;
  @override
  State<ItemCreateGoodReceiptNote> createState() =>
      _ItemCreateGoodReceiptNoteState();
}

class _ItemCreateGoodReceiptNoteState extends State<ItemCreateGoodReceiptNote> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.backgroundSecondary,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            _buildGoodReceiptNoteInfo(context, widget.note),
            _buildCenterDate(context, widget.note),
            _buildMaterialTable(context, widget.note),
          ],
        ),
      ),
    );
  }

  Widget _buildGoodReceiptNoteInfo(
      BuildContext context, CreateGoodReceiptNote note) {
    return GestureDetector(
      onLongPress: () {},
      child: CustomRoundedContainer(
        width: double.infinity,
        showBorder: false,
        padding: const EdgeInsets.all(AppSizes.md),
        margin: const EdgeInsets.all(AppSizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 40,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center, // Center the text
                    child: Text(
                      'Note Information',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ],
              ),
            ),
            AdvancedInfoRow(
              title: 'No',
              value: note.no,
            ),
            AdvancedInfoRow(
              title: 'Name',
              value: note.name,
            ),
            AdvancedInfoRow(
              title: 'PO Code',
              value: note.poCode,
            ),
            AdvancedInfoRow(
              title: 'Phase',
              value: note.phase.toString(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCenterDate(BuildContext context, CreateGoodReceiptNote note) {
    return CustomRoundedContainer(
      width: double.infinity,
      showBorder: false,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(
        left: AppSizes.md,
        right: AppSizes.md,
        bottom: AppSizes.md,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              'Date',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          AdvancedInfoRow(
            title: 'Date Created',
            value: AppFormatter.formatDate(note.date),
          ),
        ],
      ),
    );
  }

  Widget _buildMaterialTable(BuildContext context, CreateGoodReceiptNote note) {
    final columnNames = [
      'Material Name',
      'Quantity',
      'Unit',
      'Unit Price',
      'Sub Total',
      'Import Quantity',
    ];
    final columns = columnNames
        .map((name) => DataColumn(
              label: Text(
                name,
                style: Theme.of(context).textTheme.bodyLarge!.apply(
                      color: AppColors.white,
                    ),
              ),
            ))
        .toList();
    return CustomRoundedContainer(
      width: double.infinity,
      showBorder: false,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(
        left: AppSizes.md,
        right: AppSizes.md,
        bottom: AppSizes.md,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Material List',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                showCheckboxColumn: false,
                headingRowColor: WidgetStateProperty.all(AppColors.primary),
                columns: columns,
                rows: note.goodReceipNoteDetails!
                    .map(
                      (item) => DataRow(cells: <DataCell>[
                        DataCell(Text(
                          item.materialName ?? '',
                          style: Theme.of(context).textTheme.bodyMedium,
                        )),
                        DataCell(Text(
                          item.quantity.toString(),
                          style: Theme.of(context).textTheme.bodyMedium,
                        )), // Assuming quantity is numeric
                        DataCell(Text(
                          item.unit ?? '',
                          style: Theme.of(context).textTheme.bodyMedium,
                        )), // Assuming unitPrice is numeric
                        DataCell(Text(
                          item.unitPrice.toString(),
                          style: Theme.of(context).textTheme.bodyMedium,
                        )),
                        DataCell(Text(
                          item.subTotal.toString(),
                          style: Theme.of(context).textTheme.bodyMedium,
                        )),
                        DataCell(Text(
                          item.importQuantity.toString(),
                          style: Theme.of(context).textTheme.bodyMedium,
                        )),
                      ], onLongPress: () {}),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
