import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/quality_control_report/bloc/quality_control_report_bloc.dart';
import 'package:fwms_rm_app/features/request/bloc/request_bloc.dart';
import 'package:fwms_rm_app/features/request/models/request.dart';
import 'package:fwms_rm_app/screens/quality_control_report/widgets/item_quality_control_report.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/helpers/delightful_toast_helper.dart';
import 'package:fwms_rm_app/utils/helpers/loading_indicator_helper.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class QualityControlReportScreen extends StatefulWidget {
  const QualityControlReportScreen({super.key});

  @override
  State<QualityControlReportScreen> createState() =>
      _QualityControlReportScreenState();
}

class _QualityControlReportScreenState
    extends State<QualityControlReportScreen> {
  final TextEditingController _poCodeController = TextEditingController();
  final TextEditingController _requestController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _selectedPOCode;
  String? _selectedRequestId;
  String? _errorText;
  String status = 'InProgress';
  String title = 'QualityControlRequest';

  String? getSelectedPOCode() {
    return _selectedPOCode;
  }

  String? getSelectedRequestId() {
    return _selectedRequestId;
  }

  void _getAllRequest() async {
    try {
      context
          .read<RequestBloc>()
          .add(RequestEvent.fetchRequestsByStatusAndTitle(status, title));
    } catch (e) {
      debugPrint('Failed to get phases of purchase order: $e');
    }
  }

  bool validateFields() {
    if (getSelectedPOCode() == null || getSelectedRequestId() == null) {
      return false;
    } else if (getSelectedPOCode()!.isEmpty ||
        getSelectedRequestId()!.isEmpty) {
      return false;
    }
    return true;
  }

  void _navigateToCreateReportScreen() {
    final String? selectedPOCode = getSelectedPOCode();
    final String? selectedRequestId = getSelectedRequestId();
    context.go(
        '/quality-control-report-create?poCode=$selectedPOCode&requestId=$selectedRequestId');
  }

  void _addNewQCRButtonPressed() {
    if (validateFields()) {
      _navigateToCreateReportScreen();
    } else {
      DelightfulToastHelper.error(context, 'Request Error',
          'This request was not found. Please try again');
    }
  }

  void _clearButtonPressed() {
    _poCodeController.clear();
    _requestController.clear();
    _selectedPOCode = null;
    _selectedRequestId = null;
    debugPrint('Clear button pressed');
  }

  void _getAllQualityControlReports() {
    context
        .read<QualityControlReportBloc>()
        .add(const QualityControlReportEvent.started());
  }

  @override
  void initState() {
    _getAllQualityControlReports();
    _getAllRequest();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _poCodeController.dispose();
    _requestController.dispose();
    _selectedRequestId = null;
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      // isDismissible: true,
      isScrollControlled: true,
      // elevation: 0,
      // clipBehavior: Clip.none,
      // constraints: BoxConstraints(
      //   maxHeight: MediaQuery.of(context).size.height * 0.5,
      // ),
      context: context,
      builder: (builder) {
        return BlocConsumer<RequestBloc, RequestState>(
          listener: (context, state) {
            debugPrint('Request State: ${state.runtimeType}');
            state.whenOrNull(
              requestsByStatusAndTitleEmpty: (message) =>
                  DelightfulToastHelper.error(
                context,
                'Request Not Found',
                message.toString(),
              ),
              requestsByStatusAndTitleError: (error) =>
                  DelightfulToastHelper.error(
                context,
                'Request Error',
                error.toString(),
              ),
            );
          },
          builder: (context, state) {
            debugPrint('Request State: ${state.runtimeType}');
            return state.maybeWhen(
              requestsByStatusAndTitleLoaded: (requests) {
                return SingleChildScrollView(
                  child: CustomRoundedContainer(
                    width: double.infinity,
                    showBorder: false,
                    padding: EdgeInsets.only(
                        top: AppSizes.md,
                        right: AppSizes.md,
                        left: AppSizes.md,
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    margin: const EdgeInsets.only(
                        left: AppSizes.md,
                        right: AppSizes.md,
                        bottom: AppSizes.md),
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: () {},
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Select Request',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                          const SizedBox(
                            height: AppSizes.spaceBtwItems,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '*',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .apply(color: AppColors.primary),
                                ),
                                TextSpan(
                                  text:
                                      'Select a request to proceed with creating a Quality Control Report',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: AppSizes.spaceBtwItems,
                          ),
                          _buildDropdown(
                            key: _formKey,
                            context: context,
                            listItem: requests,
                            getLabel: (requests) =>
                                '${requests.relatedInformation} - ${requests.title} - Phase: ${requests.phase}',
                            controller: _requestController,
                            errorText: _errorText,
                          ),
                          const SizedBox(
                            height: AppSizes.spaceBtwSections,
                          ),
                          // _buildDropdown(
                          //   context: context,
                          //   enabled: false,
                          //   listItem: requests,
                          //   getLabel: (request) =>
                          //       request.relatedInformation,
                          //   controller: _poCodeController,
                          // ),
                          const SizedBox(
                            height: AppSizes.spaceBtwSections,
                          ),
                          _buildBottomButton(context),
                          const SizedBox(
                            height: AppSizes.spaceBtwSections,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              orElse: () => const SizedBox(),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSecondary,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        child: const Icon(
          Iconsax.add,
          color: AppColors.white,
        ),
        onPressed: () {
          _showBottomSheet();
        },
      ),
      body: BlocConsumer<QualityControlReportBloc, QualityControlReportState>(
        listener: (context, state) {
          state.whenOrNull(
              empty: (message) => DelightfulToastHelper.error(
                    context,
                    'Quality Control Report Not Found',
                    message.toString(),
                  ),
              error: (error) => DelightfulToastHelper.error(
                  context, 'Quality Control Report Error', error.toString()));
        },
        builder: (context, state) {
          return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (qualityControlReports, hasReachedMax) {
                return RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<QualityControlReportBloc>()
                        .add(const QualityControlReportEvent.refresh());
                  },
                  child: ListView.separated(
                    padding: const EdgeInsets.all(AppSizes.md),
                    itemCount: hasReachedMax!
                        ? qualityControlReports.length
                        : qualityControlReports.length + 1,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: AppSizes.md),
                    itemBuilder: (context, index) {
                      if (index < qualityControlReports.length) {
                        return ItemQualityControlReport(
                            qcr: qualityControlReports[index]);
                      } else if (hasReachedMax == true) {
                        context
                            .read<QualityControlReportBloc>()
                            .add(const QualityControlReportEvent.loadMore());
                        return const Center(
                            child:
                                CircularProgressIndicator()); // Hoặc widget loading khác
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                );
              },
              orElse: () => const SizedBox(
                    child: Center(
                      child: Text('OrElse'),
                    ),
                  ));
        },
      ),
    );
  }

  Widget _buildBottomButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        /// Clear button
        MaterialButton(
          onPressed: () {
            _clearButtonPressed();
          },
          minWidth: 80,
          height: 50,
          color: AppColors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              const Icon(Icons.close, color: AppColors.primary, size: 24),
              const SizedBox(width: 5),
              Text(
                'Clear',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: AppColors.primary,
                    ),
              ),
            ],
          ),
        ),

        /// Navigate to Add New QCR button
        MaterialButton(
          onPressed: () {
            _addNewQCRButtonPressed();
          },
          minWidth: 104,
          height: 50,
          color: AppColors.primary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Text(
            'Next',
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: AppColors.textWhite,
                ),
          ),
        ),
      ],
    );
  }

  DropdownMenu<T> _buildDropdown<T>({
    required Key key,
    required BuildContext context,
    bool enabled = true,
    required List<T> listItem,
    required String Function(T) getLabel,
    required TextEditingController? controller,
    String? errorText,
  }) {
    return DropdownMenu(
      expandedInsets: EdgeInsets.zero,
      key: key,
      enabled: enabled,
      // width: 295,
      menuHeight: 200,
      controller: controller!,
      label: Text('Select PO Code',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .apply(color: AppColors.textSecondary)),
      textStyle: Theme.of(context)
          .textTheme
          .titleMedium!
          .apply(color: AppColors.textPrimary),
      dropdownMenuEntries: listItem
          .map((item) => DropdownMenuEntry(
                value: item,
                label: getLabel(item),
              ))
          .toList(),
      onSelected: (value) {
        setState(() {
          if (value is Request) {
            if (value.id.isNotEmpty && value.relatedInformation.isNotEmpty) {
              _selectedRequestId = value.id;
              _selectedPOCode = value.relatedInformation;
            }

            _poCodeController.text = value.relatedInformation;
            debugPrint('PO Code: ${_poCodeController.text.toString()}');
            _requestController.text =
                '${value.relatedInformation} - ${value.title} - Phase: ${value.phase}';
            debugPrint('Request ID: ${_requestController.text.toString()}');
          } else {
            _selectedPOCode = null;
            _selectedRequestId = null;
            _poCodeController.text = '';
            _requestController.text = '';
          }
        });
      },
      enableSearch: true,
      requestFocusOnTap: true,
      enableFilter: true,
      errorText: errorText,
    );
  }
}
