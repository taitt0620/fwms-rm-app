import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/request/bloc/request_bloc.dart';
import 'package:fwms_rm_app/features/request/models/request.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/helpers/delightful_toast_helper.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class GoodReceiptScreen extends StatefulWidget {
  const GoodReceiptScreen({super.key});

  @override
  State<GoodReceiptScreen> createState() => _GoodReceiptScreenState();
}

class _GoodReceiptScreenState extends State<GoodReceiptScreen> {
  final TextEditingController _requestController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _selectedPOCode;
  String? _selectedRequestId;
  String? _selectedPhase;
  String status = 'InProgress';
  String title = 'InboundShipmentRequest';

  String? getSelectedPOCode() {
    return _selectedPOCode;
  }

  String? getSelectedRequestId() {
    return _selectedRequestId;
  }

  String? getSelectedPhase() {
    return _selectedPhase;
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
    if (getSelectedPOCode() == null ||
        getSelectedRequestId() == null ||
        getSelectedPhase() == null) {
      return false;
    } else if (getSelectedPOCode()!.isEmpty ||
        getSelectedRequestId()!.isEmpty ||
        getSelectedPhase()!.isEmpty) {
      return false;
    }
    return true;
  }

  void _navigateToScreen() {
    final String? selectedPOCode = getSelectedPOCode();
    final String? selectedRequestId = getSelectedRequestId();
    final String? selectedPhase = getSelectedPhase();
    context.push(
        '/good-receipt-note-create?poCode=$selectedPOCode&requestId=$selectedRequestId&phase=$selectedPhase');
  }

  void _onProceedButtonPressed() {
    if (validateFields()) {
      _navigateToScreen();
    } else {
      DelightfulToastHelper.error(context, 'Request Error',
          'This request was not found. Please try again');
    }
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      elevation: 0,
      // constraints: BoxConstraints(
      //   maxHeight: MediaQuery.of(context).size.height * 0.5,
      // ),
      context: context,
      builder: (builder) {
        return BlocConsumer<RequestBloc, RequestState>(
          listener: (context, state) {
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
            return state.maybeWhen(
                requestsByStatusAndTitleLoaded: (requests) {
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
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
                        key: _formKey,
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                'Select Request',
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                            ),
                            const SizedBox(
                              height: AppSizes.spaceBtwItems,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '* ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .apply(color: AppColors.primary),
                                  ),
                                  TextSpan(
                                    text:
                                        'Select a request to proceed with creating a Good Recept Note',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: AppSizes.spaceBtwItems,
                            ),
                            const SizedBox(height: AppSizes.spaceBtwItems),
                            _buildDropdown<Request>(
                              context: context,
                              controller: _requestController,
                              listItem: requests,
                              getLabel: (Request request) =>
                                  '${request.relatedInformation} - ${request.title} - Phase: ${request.phase}',
                            ),
                            const SizedBox(height: AppSizes.spaceBtwItems),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () async {},
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all<Color>(
                                          AppColors.white,
                                        ),
                                      ),
                                      child: Text(
                                        'Clear',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .apply(
                                              color: AppColors.textPrimary,
                                            ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () async {
                                        _onProceedButtonPressed();
                                      },
                                      child: Text(
                                        'Proceed',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .apply(
                                              color: AppColors.textWhite,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                orElse: () => const SizedBox());
          },
        );
      },
    );
  }

  @override
  void initState() {
    _getAllRequest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Good Receipt Note',
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
      body: Center(
        child: Text('Good Receipt Screen',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        child: const Icon(
          Iconsax.add,
          size: 24,
          color: AppColors.white,
        ),
        onPressed: () {
          _showBottomSheet(context);
        },
      ),
    );
  }

  DropdownMenu<T> _buildDropdown<T>({
    Key? key,
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
              _selectedPhase = value.phase.toString();
            }
            _requestController.text =
                '${value.relatedInformation} - ${value.title} - Phase: ${value.phase}';
            debugPrint('Request ID: ${_requestController.text.toString()}');
          } else {
            _selectedPOCode = null;
            _selectedRequestId = null;
            _selectedPhase = null;
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
