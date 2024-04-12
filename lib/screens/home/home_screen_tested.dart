import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/common/widgets/search_container.dart';
import 'package:fwms_rm_app/common/widgets/tabbar.dart';
import 'package:fwms_rm_app/screens/purchase_order/purchase_order_screen.dart';
import 'package:fwms_rm_app/screens/request/request_screen.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';

class HomeScreenTestedScreen extends StatefulWidget {
  const HomeScreenTestedScreen({super.key});

  @override
  State<HomeScreenTestedScreen> createState() => _HomeScreenTestedScreenState();
}

class _HomeScreenTestedScreenState extends State<HomeScreenTestedScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good day for working',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: Colors.black),
              ),
              Text(
                'Home Title',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: Colors.black),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Image(
                image: AssetImage(AppImages.iconBell),
              ),
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  expandedHeight: 140,
                  backgroundColor: AppColors.white,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(AppSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: const [
                        ///Search Bar
                        // SizedBox(
                        //   height: AppSizes.spaceBtwItems,
                        // ),
                        CustomSearchContainer(
                          text: 'Search in warehouse',
                          showBackground: false,
                          showBorder: true,
                          padding: EdgeInsets.zero,
                        ),
                        // SizedBox(
                        //   height: AppSizes.spaceBtwSections,
                        // ),
                      ],
                    ),
                  ),

                  /// Tab Bar
                  bottom: CustomTabBar(tabs: [
                    Tab(
                      text: 'Purchase Orders',
                    ),
                    Tab(
                      text: 'Requests',
                    ),
                    Tab(
                      text: 'Quality Reports',
                    ),
                  ])),
            ];
          },
          body: TabBarView(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(AppSizes.md),
                      child: PurchaseOrderScreen(),
                    ),
                  ),
                ],
              ),
              RequestScreen(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
