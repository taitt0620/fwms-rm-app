import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/config/theme/app_pallete.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/purchase_order/bloc/purchase_order_bloc.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
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
                        pathParameters: {'id': iObj.id});
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
                                    AppTexts.deliveryDate,
                                    style: TextStyle(
                                      color: AppPallete.blackColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    AppFormatter.formatDate(dateTime),
                                    style: TextStyle(
                                      color: AppPallete.blackColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                context.goNamed('purchase-order-detail',
                                    pathParameters: {'id': iObj.id});
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
                                          style: TextStyle(
                                            color: AppPallete.blackColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          iObj.poCode,
                                          style: TextStyle(
                                            color: AppPallete.blackColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
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
                                          style: TextStyle(
                                            color: AppPallete.blackColor,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Text(
                                          iObj.supplier,
                                          style: TextStyle(
                                            color: AppPallete.blackColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
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

class LoadingItem extends StatelessWidget {
  const LoadingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
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
                      AppTexts.deliveryDate,
                      style: TextStyle(
                        color: AppPallete.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'unknown',
                      style: TextStyle(
                        color: AppPallete.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppTexts.code,
                            style: TextStyle(
                              color: AppPallete.blackColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'unknown',
                            style: TextStyle(
                              color: AppPallete.blackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          )
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppTexts.supplier,
                            style: TextStyle(
                              color: AppPallete.blackColor,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                            'unknown',
                            style: TextStyle(
                              color: AppPallete.blackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
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
    );
  }
}
