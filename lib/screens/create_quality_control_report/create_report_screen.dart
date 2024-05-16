import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/features/request/bloc/request_bloc.dart';
import 'package:fwms_rm_app/screens/create_quality_control_report/widgets/relate_info_detail_screen.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/helpers/delightful_toast_helper.dart';
import 'package:go_router/go_router.dart';

class CreateReportScreen extends StatefulWidget {
  const CreateReportScreen(
      {super.key, required this.poCode, required this.requestId});
  final String? poCode;
  final String? requestId;
  @override
  State<CreateReportScreen> createState() => _CreateReportScreenState();
}

class _CreateReportScreenState extends State<CreateReportScreen> {
  void _getRelateInformation() async {
    try {
      if (widget.requestId == null || widget.poCode == null) {
        throw Exception('Request ID or PO Code is null');
      }
      context.read<RequestBloc>().add(
          RequestEvent.fetchRelateInformation(
              widget.requestId!, widget.poCode!));
    } catch (e) {
      print('Failed to get relate information: $e');
    }
  }

  @override
  void initState() {
    _getRelateInformation();
    super.initState();
    debugPrint('PO Code: ${widget.poCode}');
    debugPrint('Request ID: ${widget.requestId}');
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RequestBloc, RequestState>(
      listener: (context, state) {
        state.whenOrNull(
          relateInformationError: (error) => DelightfulToastHelper.error(context, 'Raw Relate Information Error', 'Please try again later'),
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
            relateInformationLoading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            relateInformationLoaded: (relateInformation) {
              return Scaffold(
                  appBar: CustomAppBar(
                    title: Text(
                      'Create Quality Control Report',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: AppColors.black),
                    ),
                    showBackArrow: true,
                    onBackArrowPressed: () {
                      context.go('/');
                    },
                  ),
                  body: RelateInfoDetailScreen(
                    ri: relateInformation.first,
                    requestId: widget.requestId,
                  ),);
            },
            orElse: () => const SizedBox());
      },
    );
  }
}
