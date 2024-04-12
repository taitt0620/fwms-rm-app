import 'package:flutter/material.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/common/widgets/tabbar.dart';
import 'package:fwms_rm_app/screens/purchase_order_detail/widgets/purchase_order_info_screen.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
            GoRouter.of(context).go('/');
          },
        ),
        // body: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     Expanded(
        //       child: Padding(
        //         padding: const EdgeInsets.all(AppSizes.md),
        //         child: PurchaseOrderInfoScreen(
        //           id: widget.id,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                expandedHeight: 0,
                backgroundColor: AppColors.white,
                bottom: CustomTabBar(
                  tabs: [
                    Tab(
                      text: 'Info',
                    ),
                    Tab(
                      text: 'Phase 1',
                    ),
                    Tab(
                      text: 'Phase 2',
                    ),
                    Tab(
                      text: 'Phase 3',
                    ),
                    Tab(
                      text: 'Phase 4',
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSizes.md),
                      child: PurchaseOrderInfoScreen(
                        id: widget.id,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 16.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Xác nhận'),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Center(
                  child: Text('Phase 1',
                      style: Theme.of(context).textTheme.headlineMedium),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Phase 2',
                      style: Theme.of(context).textTheme.headlineMedium),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Phase 3',
                      style: Theme.of(context).textTheme.headlineMedium),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Phase 4',
                      style: Theme.of(context).textTheme.headlineMedium),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
