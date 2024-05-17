import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/info_row.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/models/quality_control_report_detail.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';
import 'package:iconsax/iconsax.dart';

class ItemQualityControlReportDetail extends StatelessWidget {
  const ItemQualityControlReportDetail({super.key, required this.qcrd});
  final QualityControlReportDetail qcrd;
  void _showBottomSheetMaterial(
      BuildContext context, QualityControlReportDetailElement item) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: CustomRoundedContainer(
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
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                CachedNetworkImage(
                  width: 250,
                  height: 250,
                  imageUrl: item.qrCode?.image ?? '',
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      const Icon(Iconsax.warning_2, color: AppColors.error),
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
                  title: 'Number of Checks',
                  value: item.numberOfChecks.toString(),
                ),
                AdvancedInfoRow(
                  title: 'Quantity Achieved',
                  value: item.quantityAchieved.toString(),
                ),
                AdvancedInfoRow(
                  title: 'Quantity Not Reached',
                  value: item.quantityNotReached.toString(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.backgroundSecondary,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            _buildTopConclude(context),
            _buildDetails(context),
            _buildInspectionDate(context),
            _buildMaterialTable(context),
            _buildComments(context),
          ],
        ),
      ),
    );
  }

  Widget _buildComments(BuildContext context) {
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
              'Comments',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          Text(
            qcrd.comments ?? 'No comments',
            style: Theme.of(context).textTheme.bodyMedium,
            textDirection: TextDirection.rtl,
            maxLines: null,
          ),
        ],
      ),
    );
  }

  Widget _buildMaterialTable(BuildContext context) {
    final columnNames = [
      'Name',
      'Quantity',
      'Unit',
      'Number of Checks',
      'Quantity Achieved',
      'Quantity Not Reached',
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
                headingRowColor: MaterialStateProperty.all(AppColors.primary),
                columns: columns,
                rows: qcrd.qualityControlReportDetails!
                    .map(
                      (item) => DataRow(
                          cells: <DataCell>[
                            DataCell(Text(
                              item.materialName ?? 'N/A',
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            DataCell(Text(
                              item.quantity.toString(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            )), // Assuming quantity is numeric
                            DataCell(Text(
                              item.unit ?? 'N/A',
                              style: Theme.of(context).textTheme.bodyMedium,
                            )), // Assuming unitPrice is numeric
                            DataCell(Text(
                              item.numberOfChecks.toString(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            DataCell(Text(
                              item.quantityAchieved.toString(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            DataCell(Text(
                              item.quantityNotReached.toString(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                          ],
                          onLongPress: () {
                            _showBottomSheetMaterial(context, item);
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

  Widget _buildInspectionDate(BuildContext context) {
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
              'Inspection Date',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          AdvancedInfoRow(
            title: 'Inspection Date',
            value: AppFormatter.formatDate(qcrd.inspectionDate),
          ),
          AdvancedInfoRow(
            title: 'Receipt Date',
            value: AppFormatter.formatDate(qcrd.receiptDate),
          ),
        ],
      ),
    );
  }

  Widget _buildDetails(BuildContext context) {
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
              'Relate Infomation',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          AdvancedInfoRow(
            title: 'PO Code',
            value: qcrd.poCode,
          ),
          AdvancedInfoRow(
            title: 'Phase',
            value: qcrd.phase.toString(),
          ),
          AdvancedInfoRow(
            title: 'PO Fax',
            value: qcrd.poFax,
          ),
          AdvancedInfoRow(
            title: 'Supllier',
            value: qcrd.supplier,
          ),
          AdvancedInfoRow(
            title: 'LicensePlate',
            value: qcrd.licensePlate,
          ),
        ],
      ),
    );
  }

  Widget _buildTopConclude(BuildContext context) {
    return CustomRoundedContainer(
      width: double.infinity,
      showBorder: false,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.all(AppSizes.md),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              'Conclude',
              style: Theme.of(context).textTheme.bodyLarge,
              textDirection: TextDirection.ltr,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              AppFormatter.addSpaces(qcrd.conclude.toString()),
              style: Theme.of(context).textTheme.bodyLarge!.apply(
                    color: qcrd.conclude == 'NotAchieved'
                        ? AppColors.primary
                        : qcrd.conclude == 'Obtain'
                            ? AppColors.green
                            : AppColors.black,
                  ),
              textDirection: TextDirection.rtl,
            ),
          ),
        ],
      ),
    );
  }
}
