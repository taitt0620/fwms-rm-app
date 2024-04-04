import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/features/request/bloc/request_bloc.dart';
import 'package:fwms_rm_app/features/warehouse/bloc/warehouse_bloc.dart';
import 'package:fwms_rm_app/screens/request/widgets/single_request.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  void initState() {
    context.read<RequestBloc>().add(FetchRequestsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      body: BlocConsumer<RequestBloc, RequestState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is RequestLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is RequestError) {
            return Center(
              child: Text(state.message),
            );
          } else if (state is RequestLoaded) {
            return Padding(
              padding: const EdgeInsets.all(AppSizes.spaceBtwItems),
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        height: AppSizes.sm,
                      ),
                  itemCount: state.requests.length,
                  itemBuilder: (context, index) {
                    return SingleRequest(
                      request: state.requests[index],
                      id: state.requests[index].warehouseId ?? '',
                    );
                  }),
            );
          }
          return Container(
            child: Text('No data'),
          );
        },
      ),
    );
  }
}
