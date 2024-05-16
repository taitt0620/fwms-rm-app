import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/features/quality_control_report_detail/bloc/quality_control_report_detail_bloc.dart';
import 'package:fwms_rm_app/screens/quality_control_report_detail/widgets/item_quality_control_report_detail.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/helpers/delightful_toast_helper.dart';
import 'package:go_router/go_router.dart';

class QualityControlReportDetailScreen extends StatefulWidget {
  const QualityControlReportDetailScreen({super.key, this.id});
  final String? id;
  @override
  State<QualityControlReportDetailScreen> createState() =>
      _QualityControlReportDetailScreenState();
}

class _QualityControlReportDetailScreenState
    extends State<QualityControlReportDetailScreen> {
  void _getQualityReportDetail() async {
    try {
      final id = widget.id;
      if (id == null) {
        throw ArgumentError('ID cannot be null');
      }
      context.read<QualityControlReportDetailBloc>().add(
          QualityControlReportDetailEvent.fetchQualityControlReportDetail(id: id));
    } catch (e) {
      debugPrint('Failed to get quality control report detail: $e');
    }
  }
  
  @override
  void initState() {
    _getQualityReportDetail();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: AppColors.white,
        title: Text(
          'Quality Control Report Detail',
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
      body: BlocConsumer<QualityControlReportDetailBloc, QualityControlReportDetailState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (error) =>
                DelightfulToastHelper.error(
                    context, 'Fetch Detail Error', error.toString()),
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              loaded: (qualityControlReportDetails) {
                final qcrd = qualityControlReportDetails[0];
                return ItemQualityControlReportDetail(qcrd: qcrd);
              },
              orElse: () => const SizedBox());
        },
      ),
    );
  }
}
