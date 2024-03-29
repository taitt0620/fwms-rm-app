import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fwms_rm_app/config/theme/app_pallete.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (_, __) => SizedBox(height: 16),
      itemBuilder: (_, index) => CustomRoundedContainer(
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
                        'Processing',
                        style: TextStyle(
                          color: AppPallete.blueColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '8 March 2024',
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
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              'PO10289',
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
                      Image.asset('assets/icons/icons8-supplier-24.png',
                          width: 24, height: 24),
                      SizedBox(width: 8),
                      //Status and Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                              'Order Desk',
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
  }
}
