import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/features/purchase_order_phase/bloc/purchase_order_phase_bloc.dart';
import 'package:fwms_rm_app/screens/purchase_order_detail/widgets/purchase_order_phase_detail_screen.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';

class NestedTabbar extends StatefulWidget {
  const NestedTabbar({super.key, required this.id});
  final String? id;
  @override
  State<NestedTabbar> createState() => _NestedTabbarState();
}

class _NestedTabbarState extends State<NestedTabbar> {
  void _onGetPhasesOfPurchaseOrder() {
    try {
      final id = widget.id;
      if (id == null) {
        throw ArgumentError('ID cannot be null');
      }

      context
          .read<PurchaseOrderPhaseBloc>()
          .add(PurchaseOrderPhaseEvent.getPhasesOfPurchaseOrder(id));
    } catch (e) {
      print('Failed to get phases of purchase order: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _onGetPhasesOfPurchaseOrder();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PurchaseOrderPhaseBloc, PurchaseOrderPhaseState>(
      builder: (context, state) {
        return state.maybeWhen(
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            loaded: (phases) {
              return DefaultTabController(
                length: phases.length,
                child: Column(
                  children: <Widget>[
                    Container(
                      // padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                      ),
                      child: TabBar.secondary(
                        dividerColor: AppColors.transparent,
                        // overlayColor: MaterialStateProperty.resolveWith(
                        //   (states) => AppColors.backgroundSecondary,
                        // ),
                        tabAlignment: TabAlignment.start,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: const BubbleTabIndicator(
                          indicatorHeight: 27.0,
                          indicatorColor: AppColors.primary,
                          tabBarIndicatorSize: TabBarIndicatorSize.label,
                          // Other flags
                          indicatorRadius: 12,
                          // insets: EdgeInsets.all(1),
                          // padding: EdgeInsets.all(10)
                        ),
                        labelColor: AppColors.white,
                        labelStyle: Theme.of(context).textTheme.bodySmall,
                        unselectedLabelColor: AppColors.black,
                        isScrollable: true,
                        tabs: phases
                            .map((item) => Tab(
                                text: item.phase == 0
                                    ? 'Replenishment'
                                    : 'Phase ${item.phase.toString()}'))
                            .toList(),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: phases
                            .map(
                              (item) => PurchaseOrderPhaseDetailScreen(
                                  pop: item), // No .toList()
                            )
                            .toList(), // Convert the Iterable to a List at the end
                      ),
                    ),
                  ],
                ),
              );
            },
            orElse: () => const SizedBox());
      },
    );
  }
}
