import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/features/purchase_order/bloc/purchase_order_bloc.dart';
import 'package:fwms_rm_app/screens/purchase_order/widgets/item_loading.dart';
import 'package:fwms_rm_app/screens/purchase_order/widgets/item_purchase_order.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

class PurchaseOrderScreen extends StatefulWidget {
  const PurchaseOrderScreen({super.key});

  @override
  State<PurchaseOrderScreen> createState() => _PurchaseOrderScreenState();
}

class _PurchaseOrderScreenState extends State<PurchaseOrderScreen> {
  void _getAllPurchaseOrder() async {
    try {
      context.read<PurchaseOrderBloc>().add(const PurchaseOrderEvent.started());
    } catch (e) {
      print('Failed to get phases of purchase order: $e');
    }
  }

  @override
  void initState() {
    _getAllPurchaseOrder();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSecondary,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.md),
              child: BlocConsumer<PurchaseOrderBloc, PurchaseOrderState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.when(
                    initial: () => Container(),
                    loading: () => ListView.separated(
                      shrinkWrap: true,
                      itemCount:
                          20, // Number of placeholder items during loading
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: AppSizes.md),
                      itemBuilder: (context, index) => Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: const ItemLoading(),
                      ),
                    ),
                    loaded: (purchaseOrders, hasReachedMax) =>
                        ListView.separated(
                            shrinkWrap: true,
                            itemCount: purchaseOrders.length,
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: AppSizes.md),
                            itemBuilder: (context, index) {
                              var po = purchaseOrders[index];
                              return GestureDetector(
                                onTap: () {
                                  context.push(
                                      '/purchase-order-detail?id=${po.id}');
                                },
                                child: ItemPurchaseOrder(po: po),
                              );
                            }),
                    error: (error) =>
                        const Center(child: Text('Something went wrong')),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
