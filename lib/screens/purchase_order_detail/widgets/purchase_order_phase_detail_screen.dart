import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/info_row.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/purchase_order_phase/models/purchase_order_phase.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';

class PurchaseOrderPhaseDetailScreen extends StatelessWidget {
  const PurchaseOrderPhaseDetailScreen({super.key, required this.pop});

  final PurchaseOrderPhase pop;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.backgroundSecondary,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            _buildTopStatus(context),
            _buildPhaseInfo(context),
            _buildMaterialTable(context),
          ],
        ),
      ),
    );
  }

  Widget _buildMaterialTable(BuildContext context) {
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
                headingRowColor: MaterialStateProperty.all(AppColors.primary),
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Name',
                      style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: AppColors.white,
                          ),
                    ),
                  ),
                  DataColumn(
                      label: Text(
                    'Unit',
                    style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: AppColors.white,
                        ),
                  )),
                  DataColumn(
                      label: Text(
                    'Quantity',
                    style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: AppColors.white,
                        ),
                  )),
                  DataColumn(
                      label: Text(
                    'Unit Price',
                    style: Theme.of(context).textTheme.bodyLarge!.apply(
                          color: AppColors.white,
                        ),
                  )),
                  DataColumn(
                    label: Text(
                      'Subtotal',
                      style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: AppColors.white,
                          ),
                    ),
                  ),
                ],
                rows: pop.listDetails
                    .map(
                      (item) => DataRow(
                          cells: <DataCell>[
                            DataCell(Text(
                              item.materialName,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            DataCell(Text(
                              item.unit,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            DataCell(Text(
                              item.quantity.toString(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            )), // Assuming quantity is numeric
                            DataCell(Text(
                              item.unitPrice.toString(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            )), // Assuming unitPrice is numeric
                            DataCell(Text(
                              item.subTotal.toString(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            )), // Calculate sub total
                          ],
                          // onSelectChanged: (selected) {
                          //   if (selected!) {
                          //     showModalBottomSheet(
                          //       context: context,
                          //       builder: (context) {
                          //         return Container(
                          //           height:
                          //               200, // You can adjust this value as needed
                          //           child: Center(
                          //             child: Text('You selected a row'),
                          //           ),
                          //         );
                          //       },
                          //     );
                          //   }
                          // },
                          onLongPress: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return CustomRoundedContainer(
                                  width: double.infinity,
                                  showBorder: false,
                                  padding: const EdgeInsets.all(AppSizes.md),
                                  margin: const EdgeInsets.only(
                                    left: AppSizes.md,
                                    right: AppSizes.md,
                                    bottom: AppSizes.md,
                                    top: AppSizes.md,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Center(
                                        child: Text(
                                          'Material Details',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall,
                                        ),
                                      ),
                                      AdvancedInfoRow(
                                        title: 'Material Name',
                                        value: item.materialName,
                                      ),
                                      AdvancedInfoRow(
                                        title: 'Unit',
                                        value: item.unit,
                                      ),
                                      AdvancedInfoRow(
                                        title: 'Quantity',
                                        value: item.quantity.toString(),
                                      ),
                                      AdvancedInfoRow(
                                        title: 'Unit Price',
                                        value: item.unitPrice.toString(),
                                      ),
                                      AdvancedInfoRow(
                                        title: 'Subtotal',
                                        value: item.subTotal.toString(),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          }),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhaseInfo(BuildContext context) {
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
              'Phase Infomation',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          AdvancedInfoRow(
            title: 'Phase',
            value: pop.phase == 0 ? 'Replenishment' : pop.phase.toString(),
          ),
          AdvancedInfoRow(title: 'PO Code', value: pop.poCode.toString()),
          AdvancedInfoRow(
              title: 'Expected Date',
              value: AppFormatter.formatDate(pop.expectedDate)),
          AdvancedInfoRow(title: 'Deliver Staff', value: pop.deliver),
          AdvancedInfoRow(title: 'Notes', value: pop.notes),
        ],
      ),
    );
  }

  Widget _buildTopStatus(BuildContext context) {
    return CustomRoundedContainer(
      width: double.infinity,
      showBorder: false,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(
          left: AppSizes.md,
          right: AppSizes.md,
          bottom: AppSizes.md,
          top: AppSizes.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              'Status',
              style: Theme.of(context).textTheme.bodyLarge,
              textDirection: TextDirection.ltr,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              AppFormatter.addSpaces(pop.status),
              style: Theme.of(context).textTheme.bodyLarge!.apply(
                    color: pop.status == 'WaitForConfirmation'
                        ? Colors.blue
                        : pop.status == 'InProgress'
                            ? Colors.yellow
                            : pop.status == 'Done'
                                ? Colors.green
                                : pop.status == 'Rejected'
                                    ? Colors.red
                                    : Colors.black,
                  ),
              textDirection: TextDirection.rtl,
            ),
          ),
        ],
      ),
    );
  }
}
