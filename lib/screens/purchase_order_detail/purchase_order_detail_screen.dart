import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/common/widgets/tabbar.dart';
import 'package:fwms_rm_app/features/purchase_order_detail/bloc/purchase_order_detail_bloc.dart';
import 'package:fwms_rm_app/screens/purchase_order_detail/widgets/nested_tabbar.dart';
import 'package:fwms_rm_app/screens/purchase_order_detail/widgets/purchase_order_info_screen.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';
import 'package:go_router/go_router.dart';

class PurchaseOrderDetailScreen extends StatefulWidget {
  const PurchaseOrderDetailScreen({super.key, this.id});
  final String? id;
  @override
  State<PurchaseOrderDetailScreen> createState() =>
      _PurchaseOrderDetailScreenState();
}

class _PurchaseOrderDetailScreenState extends State<PurchaseOrderDetailScreen> {
  void _getPurchaseOrderDetail() async {
    try {
      final id = widget.id;
      if (id == null) {
        throw ArgumentError('ID cannot be null');
      }
      context
          .read<PurchaseOrderDetailBloc>()
          .add(PurchaseOrderDetailEvent.fetchPurchaseOrderStarted(id));
    } catch (e) {
      print('Failed to get phases of purchase order: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _getPurchaseOrderDetail();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PurchaseOrderDetailBloc, PurchaseOrderDetailState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.when(
          initial: () => Container(),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (purchaseOrderDetail) => DefaultTabController(
            initialIndex: 0,
            length: 2,
            child: Scaffold(
              appBar: CustomAppBar(
                title: Text(
                  AppTexts.purchaseOrderDetailTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: AppColors.black),
                ),
                showBackArrow: true,
                onBackArrowPressed: () {
                  context.pop();
                },
              ),
              body: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    const SliverAppBar(
                      automaticallyImplyLeading: false,
                      pinned: true,
                      floating: true,
                      expandedHeight: 0,
                      backgroundColor: AppColors.white,
                      bottom: CustomTabBar(
                        isScrollable: false,
                        tabAlignment: TabAlignment.fill,
                        tabs: [
                          Tab(
                            text: 'Information',
                          ),
                          Tab(
                            text: 'Phase Detail',
                          ),
                        ],
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  children: [
                    PurchaseOrderInfoScreen(
                      pod: purchaseOrderDetail[0],
                    ),
                    NestedTabbar(
                      id: purchaseOrderDetail[0].id,
                    ),
                  ],
                ),
              ),
            ),
          ),
          error: (error) => const Center(child: Text('Something went wrong')),
        );
      },
    );
  }
}
