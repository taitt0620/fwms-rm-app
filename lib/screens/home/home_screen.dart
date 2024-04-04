import 'package:flutter/material.dart';
import 'package:fwms_rm_app/screens/home/widgets/item_screen.dart';
import 'package:fwms_rm_app/screens/request/request_screen.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTexts.homeTitle,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: AppColors.black),
        ),
        bottom: TabBar(
          indicatorColor: AppColors.primary,
          labelColor: AppColors.primary,
          controller: _tabController,
          labelStyle: Theme.of(context).textTheme.bodyLarge,
          tabs: const [
            Tab(
              text: 'Purchase Order',
            ),
            Tab(
              text: 'Request',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(AppSizes.md),
                  child: ItemScreen(),
                ),
              ),
            ],
          ),
          RequestScreen(),
        ],
      ),
    );
  }
}
