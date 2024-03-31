import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/config/theme/app_pallete.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/purchase_order/bloc/purchase_order_bloc.dart';
import 'package:intl/intl.dart';

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
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Data loaded')));
        } else if (state is PurchaseOrderErrorState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Error: ${state.message}')));
        }
      },
      builder: (context, state) {
        if (state is PurchaseOrderLoadingState) {
          return Center(child: CircularProgressIndicator());
        } else if (state is PurchaseOrderLoadedState) {
          return ListView.separated(
              shrinkWrap: true,
              itemCount: state.purchaseOrders.length,
              separatorBuilder: (context, index) => SizedBox(height: 16),
              itemBuilder: (context, index) {
                final dateTime =
                    DateTime.parse(state.purchaseOrders[index].date.toString());
                final formattedDate =
                    DateFormat('dd MMMM yyyy').format(dateTime);
                var iObj = state.purchaseOrders[index];
                return CustomRoundedContainer(
                  showBorder: true,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          //image
                          Image.asset('assets/icons/icons8-truck-24.png',
                              width: 24, height: 24),
                          SizedBox(width: 8),
                          //Status and Date
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Delivery Date',
                                  style: TextStyle(
                                    color: AppPallete.blackColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  formattedDate,
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
                            icon: Image.asset(
                              'assets/icons/icons8-forward-24.png',
                              width: 16,
                              height: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      // Row 2
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                //image
                                Image.asset('assets/icons/icons8-tag-24.png',
                                    width: 24, height: 24),
                                SizedBox(width: 8),
                                //Status and Date
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Order',
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
                                Image.asset(
                                    'assets/icons/icons8-supplier-24.png',
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
                                        'Supplier',
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
