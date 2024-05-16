import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/info_row.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/models/purchase_order_detail.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';

class PurchaseOrderInfoScreen extends StatelessWidget {
  const PurchaseOrderInfoScreen({super.key, required this.pod});

  final PurchaseOrderDetail pod;

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
            _buildPurchaseOrderInfo(context),
            _buildMaterialTable(context),
          ],
        ),
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
        top: AppSizes.md,
        bottom: AppSizes.md,
      ),
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
              AppFormatter.addSpaces(pod.status),
              style: Theme.of(context).textTheme.bodyLarge!.apply(
                    color: pod.status == 'Unfinished'
                        ? AppColors.primary
                        : pod.status == 'InProgress'
                            ? Colors.yellow
                            : pod.status == 'Done'
                                ? Colors.green
                                : pod.status == 'Rejected'
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

  Widget _buildPurchaseOrderInfo(BuildContext context) {
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
              'Purchase Order Infomation',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          AdvancedInfoRow(
            title: 'Total Phase',
            value: pod.totalPhase.toString(),
          ),
          AdvancedInfoRow(title: 'PO Code', value: pod.poCode),
          AdvancedInfoRow(title: 'Supplier', value: pod.supplier),
          AdvancedInfoRow(title: 'License Plate', value: pod.licensePlate),
          AdvancedInfoRow(
              title: 'Date', value: AppFormatter.formatDate(pod.date)),
          AdvancedInfoRow(title: 'Address', value: pod.address),
          AdvancedInfoRow(title: 'Fax', value: pod.fax),
          AdvancedInfoRow(title: 'Staff', value: pod.staffName),
        ],
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
                      'Sub Total',
                      style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: AppColors.white,
                          ),
                    ),
                  ),
                ],
                rows: pod.listDetails
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
                                        title: 'Sub Total',
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
}
