import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/request/models/request.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';

class ItemRequest extends StatelessWidget {
  const ItemRequest({super.key, required this.request});
  final Request request;

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(AppSizes.md),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              //image
              const Image(
                  image: AssetImage(AppImages.iconTruck),
                  width: 24,
                  height: 24),
              const SizedBox(width: AppSizes.md),

              //Status and Title
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppFormatter.addSpaces(request.status),
                      style: Theme.of(context).textTheme.titleLarge!.apply(
                            color: request.status == 'Pending'
                                ? Colors.blue
                                : request.status == 'InProgress'
                                    ? Colors.yellow
                                    : request.status == 'Done'
                                        ? Colors.green
                                        : request.status == 'Rejected'
                                            ? Colors.red
                                            : Colors.black,
                          ),
                    ),
                    Text(
                      AppFormatter.addSpaces(request.title),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  // context.push('/purchase-order-detail?id=${po.id}');
                },
                icon: const Image(
                  image: AssetImage(AppImages.iconForward),
                  width: AppSizes.md,
                  height: AppSizes.md,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.md),
          // Row 2
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    /// Icon
                    const Image(
                      image: AssetImage(AppImages.iconTag),
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: AppSizes.md),

                    /// Related Information and Phase
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PO Code',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Text(
                            request.relatedInformation,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    /// icon
                    const Image(
                        image: AssetImage(AppImages.iconSupplier),
                        width: 24,
                        height: 24),
                    const SizedBox(width: AppSizes.md),

                    /// Phase
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phase',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Text(
                            request.phase.toString(),
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // BlocConsumer<WarehouseBloc, WarehouseState>(
          //   listener: (context, state) {},
          //   builder: (context, state) {
          //     return state.when(
          //       initial: () => Container(),
          //       loading: () => Container(),
          //       loaded: (_) => Container(),
          //       detailLoading: () => const Center(
          //         child: CircularProgressIndicator(),
          //       ),
          //       detailLoaded: (warehouse) => ExpansionTile(
          //         expandedCrossAxisAlignment: CrossAxisAlignment.start,
          //         expandedAlignment: Alignment.centerLeft,
          //         collapsedBackgroundColor: AppColors.transparent,
          //         tilePadding: EdgeInsets.zero,
          //         shape: Border.all(color: AppColors.transparent),
          //         title: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             Text(
          //               'Warehouse',
          //               style: Theme.of(context).textTheme.bodyMedium,
          //             ),
          //           ],
          //         ),
          //         children: [
          //           Text(
          //             warehouse.name,
          //             style: Theme.of(context).textTheme.bodyMedium,
          //             maxLines: 1,
          //             overflow: TextOverflow.ellipsis,
          //           ),
          //           Text(
          //             warehouse.type,
          //             style: Theme.of(context).textTheme.bodyMedium,
          //             maxLines: 1,
          //             overflow: TextOverflow.ellipsis,
          //           ),
          //           Text(
          //             warehouse.status,
          //             style: (Theme.of(context).textTheme.titleSmall ??
          //                     const TextStyle())
          //                 .copyWith(
          //               color: warehouse.status == 'Close'
          //                   ? Colors.red
          //                   : warehouse.status == 'Active'
          //                       ? Colors.green
          //                       : Colors.black,
          //             ),
          //             maxLines: 1,
          //             overflow: TextOverflow.ellipsis,
          //           ),
          //         ],
          //       ),
          //       error: (error) => Center(
          //         child: Text('$error'),
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
