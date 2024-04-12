import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/purchase_order/bloc/purchase_order_bloc.dart';
import 'package:fwms_rm_app/screens/purchase_order/widgets/loading_container.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class PurchaseOrderScreen extends StatefulWidget {
  const PurchaseOrderScreen({super.key});

  @override
  State<PurchaseOrderScreen> createState() => _PurchaseOrderScreenState();
}

class _PurchaseOrderScreenState extends State<PurchaseOrderScreen> {
  @override
  void initState() {
    context.read<PurchaseOrderBloc>().add(PurchaseOrderEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PurchaseOrderBloc, PurchaseOrderState>(
      listener: (context, state) {
        if (state is PurchaseOrderLoadedState) {
          // ScaffoldMessenger.of(context)
          //     .showSnackBar(SnackBar(content: Text('Data loaded')));
        } else if (state is PurchaseOrderErrorState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Error: ${state.message}')));
        }
      },
      builder: (context, state) {
        if (state is PurchaseOrderLoadingState) {
          return Skeletonizer(
            enabled: true,
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) =>
                  const SizedBox(height: AppSizes.md),
              itemCount: 10, // The number of skeleton items
              itemBuilder: (context, index) {
                return LoadingItem();
              },
            ),
          );
        } else if (state is PurchaseOrderLoadedState) {
          return ListView.separated(
              shrinkWrap: true,
              itemCount: state.purchaseOrders.length,
              separatorBuilder: (context, index) =>
                  const SizedBox(height: AppSizes.md),
              itemBuilder: (context, index) {
                final dateTime =
                    DateTime.parse(state.purchaseOrders[index].date.toString());
                var iObj = state.purchaseOrders[index];
                return InkWell(
                  onTap: () {
                    context.goNamed('purchase-order-detail',
                        pathParameters: {'id': iObj.id!});
                  },
                  child: CustomRoundedContainer(
                    showBorder: true,
                    padding: EdgeInsets.all(AppSizes.md),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            //image
                            Image(
                                image: AssetImage(AppImages.iconTruck),
                                width: 24,
                                height: 24),
                            SizedBox(width: 8),

                            //Status and Date
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppFormatter.formatStatus(iObj.status!),
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .apply(
                                          color: iObj.status! ==
                                                  'NotDeliveredEnough'
                                              ? Colors.blue
                                              : iObj.status! == 'InProgress'
                                                  ? Colors.yellow
                                                  : iObj.status! == 'Done'
                                                      ? Colors.green
                                                      : Colors.black,
                                        ),
                                  ),
                                  Text(
                                    AppFormatter.formatDate(dateTime),
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                context.goNamed('purchase-order-detail',
                                    pathParameters: {'id': iObj.id!});
                              },
                              icon: Image(
                                image: AssetImage(AppImages.iconForward),
                                width: AppSizes.md,
                                height: AppSizes.md,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.md),
                        // Row 2
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  //image
                                  Image(
                                    image: AssetImage(AppImages.iconTag),
                                    width: 24,
                                    height: 24,
                                  ),
                                  SizedBox(width: 8),
                                  //Status and Date
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppTexts.code,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                        Text(
                                          iObj.poCode!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
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
                                  //image
                                  Image(
                                      image: AssetImage(AppImages.iconSupplier),
                                      width: 24,
                                      height: 24),
                                  SizedBox(width: 8),
                                  //Supplier
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppTexts.supplier,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelLarge,
                                        ),
                                        Text(
                                          iObj.supplier!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              });
        } else if (state is PurchaseOrderErrorState) {
          return Center(child: Text(state.message));
        }
        return Container();
      },
    );
  }
}
