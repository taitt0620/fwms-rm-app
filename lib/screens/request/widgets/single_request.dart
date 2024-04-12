import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/request/dtos/request_dto.dart';
import 'package:fwms_rm_app/features/warehouse/bloc/warehouse_bloc.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';

class SingleRequest extends StatefulWidget {
  const SingleRequest({super.key, required this.request, required this.id});

  final RequestDto request;
  final String id;

  @override
  State<SingleRequest> createState() => _SingleRequestState();
}

class _SingleRequestState extends State<SingleRequest> {
  @override
  void initState() {
    context.read<WarehouseBloc>().add(FetchWarehouseDetailEvent(widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      onTap: () {},
      child: CustomRoundedContainer(
        width: double.infinity,
        showBorder: true,
        padding: EdgeInsets.all(AppSizes.md),
        child: Stack(
          children: [
            // Positioned(
            //   right: 5,
            //   top: 0,
            //   child: Icon(
            //     selectedRequest ? Icons.check_circle : null,
            //     color: AppColors.light,
            //   ),
            // ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.request.status ?? 'No status',
                  style: Theme.of(context).textTheme.titleLarge!.apply(
                        color: widget.request.status == 'Pending'
                            ? Colors.blue
                            : widget.request.status == 'InProgress'
                                ? Colors.yellow
                                : widget.request.status == 'Done'
                                    ? Colors.green
                                    : Colors.black,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: AppSizes.sm / 2),
                Text(
                  widget.request.title ?? 'No title',
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: AppSizes.sm / 2),
                Text(
                  'Description: ${widget.request.description?.isEmpty ?? true ? 'Không có' : widget.request.description}',
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: AppSizes.sm / 2),
                BlocConsumer<WarehouseBloc, WarehouseState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    if (state is WarehouseLoading) {
                    } else if (state is WarehouseError) {
                      return Text(state.message);
                    } else if (state is WarehouseLoaded) {
                      return ExpansionTile(
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        expandedAlignment: Alignment.centerLeft,
                        collapsedBackgroundColor: AppColors.transparent,
                        tilePadding: EdgeInsets.zero,
                        shape: Border.all(color: AppColors.transparent),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Warehouse',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        children: [
                          Text(
                            state.warehouse.name ?? 'No name',
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            state.warehouse.type ?? 'No name',
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            state.warehouse.status ?? 'No name',
                            style: (Theme.of(context).textTheme.titleSmall ??
                                    TextStyle())
                                .copyWith(
                              color: state.warehouse.status == 'Close'
                                  ? Colors.red
                                  : state.warehouse.status == 'Active'
                                      ? Colors.green
                                      : Colors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      );
                    }
                    return Container();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
