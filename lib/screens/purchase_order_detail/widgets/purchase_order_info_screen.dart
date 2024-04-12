import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/bloc/purchase_order_detail_bloc.dart';
import 'package:fwms_rm_app/screens/purchase_order_detail/widgets/custom_row.dart';
import 'package:fwms_rm_app/screens/purchase_order_detail/widgets/product.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';

class PurchaseOrderInfoScreen extends StatefulWidget {
  const PurchaseOrderInfoScreen({super.key, this.id});

  final String? id;

  @override
  State<PurchaseOrderInfoScreen> createState() =>
      _PurchaseOrderInfoScreenState();
}

class _PurchaseOrderInfoScreenState extends State<PurchaseOrderInfoScreen> {
  @override
  void initState() {
    // context.read<PurchaseOrderBloc>().add(PurchaseOrderEvent());
    context
        .read<PurchaseOrderDetailBloc>()
        .add(LoadPurchaseOrderDetailEvent(widget.id!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PurchaseOrderDetailBloc, PurchaseOrderDetailState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is PurchaseOrderDetailLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is PurchaseOrderDetailLoaded) {
          final iObj = state.purchaseOrderDetail;
          final formattedTotalAmount = AppFormatter.formatCurrency(
              iObj[0].totalPrice?.toDouble() ?? 0.0);
          return SingleChildScrollView(
            child: Column(
              children: [
                CustomRoundedContainer(
                  width: double.infinity,
                  showBorder: true,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage(AppImages.iconSupplier),
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 8),
                          Text(
                            AppTexts.purchaseOrderDetailInfo,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      CustomLine(
                        titleText: AppTexts.poCode,
                        detailText: iObj[0].poCode ?? 'unknown',
                      ),
                      SizedBox(height: 16),
                      CustomLine(
                        titleText: AppTexts.fax,
                        detailText: iObj[0].fax ?? 'unknown',
                      ),
                      SizedBox(height: 16),
                      CustomLine(
                        titleText: AppTexts.address,
                        detailText: iObj[0].address ?? 'unknown',
                      ),
                      SizedBox(height: 16),
                      CustomLine(
                        titleText: AppTexts.staff,
                        detailText: iObj[0].staffName ?? 'unknown',
                      ),
                      SizedBox(height: 16),
                      CustomLine(
                        titleText: AppTexts.date,
                        detailText: iObj[0].date.toString(),
                      ),
                      SizedBox(height: 16),
                      CustomLine(
                        titleText: AppTexts.notes,
                        detailText: iObj[0].notes ?? 'unknown',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                CustomRoundedContainer(
                  width: double.infinity,
                  showBorder: true,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 3, bottom: 3),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage(AppImages.iconSupplier),
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(width: 8),
                            Text(
                              AppTexts.supplierName,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: AppColors.black.withOpacity(0.2),
                        height: 1,
                      ),
                      SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 350,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: iObj[0].listDetails?.length,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        Product(
                                          materialName: iObj[0]
                                                  .listDetails?[index]
                                                  .materialName ??
                                              '',
                                          unit: iObj[0]
                                                  .listDetails?[index]
                                                  .unit ??
                                              '',
                                          quantity: iObj[0]
                                                  .listDetails?[index]
                                                  .quantity ??
                                              0,
                                          subTotal: (iObj[0]
                                                      .listDetails?[index]
                                                      .subTotal ??
                                                  0.0)
                                              .toDouble(),
                                          unitPrice: (iObj[0]
                                                      .listDetails?[index]
                                                      .unitPrice ??
                                                  0.0)
                                              .toDouble(),
                                        ),
                                        SizedBox(height: 16),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: AppColors.black.withOpacity(0.2),
                        height: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 3, bottom: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppTexts.totalPrice,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'đ $formattedTotalAmount',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          );
        } else if (state is PurchaseOrderDetailError) {
          return Center(child: Text(state.message));
        }
        return Container();
      },
    );
  }
}
