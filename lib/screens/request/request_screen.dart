import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/create_request/bloc/create_request_bloc.dart';
import 'package:fwms_rm_app/features/create_request/models/request_purchase_orders.dart';
import 'package:fwms_rm_app/features/request/bloc/request_bloc.dart';
import 'package:fwms_rm_app/features/warehouse/bloc/warehouse_bloc.dart';
import 'package:fwms_rm_app/screens/request/widgets/item_request.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/helpers/delightful_toast_helper.dart';
import 'package:go_router/go_router.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _relatedInformationController =
      TextEditingController();
  final TextEditingController _phaseController = TextEditingController();
  final TextEditingController _warehouseController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? selectedTitle;
  String? selectedWarehouseId;
  String? newDescription;
  String? selectedRelatedInformation;
  String? selectedPhase;
  List<RequestPurchaseOrders> listRelatedInformation = [];
  List<String> listStatuses = ['Pending', 'InProgress'];
  void _getAllRequest(List<String> statuses) async {
    try {
      context
          .read<RequestBloc>()
          .add(RequestEvent.fetchRequestsByStatuses(listStatuses));
    } catch (e) {
      debugPrint('Failed to get phases of purchase order: $e');
    }
  }

  void _getAllWarehouse() async {
    try {
      context.read<WarehouseBloc>().add(const WarehouseEvent.fetchWarehouses());
    } catch (e) {
      debugPrint('Failed to get warehouses: $e');
    }
  }

  void _clear() {
    _titleController.clear();
    _descriptionController.clear();
    _relatedInformationController.clear();
    _phaseController.clear();
    _warehouseController.clear();
    selectedTitle = null;
    selectedWarehouseId = null;
    newDescription = null;
    selectedPhase = null;
    selectedRelatedInformation = null;
    listRelatedInformation = [];
  }

  void _createButtonPressed() {
    debugPrint('Title: $selectedTitle');
    debugPrint('WarehouseId: $selectedWarehouseId');
    debugPrint('RelatedInformation: $selectedRelatedInformation');
    debugPrint('Phase: ${_phaseController.text}');
    debugPrint('Description: ${_descriptionController.text}');

    if (selectedTitle == null) {
      DelightfulToastHelper.error(
        context,
        'Error',
        'Please select request title',
      );
      return;
    } else if (selectedWarehouseId == null) {
      DelightfulToastHelper.error(
        context,
        'Error',
        'Please select warehouse',
      );
      return;
    } else if (selectedRelatedInformation == null) {
      DelightfulToastHelper.error(
        context,
        'Error',
        'Please select relate information',
      );
      return;
    } else if (_descriptionController.text.isEmpty) {
      DelightfulToastHelper.error(
        context,
        'Error',
        'Please enter description',
      );
      return;
    } else if (_phaseController.text == null) {
      DelightfulToastHelper.error(
        context,
        'Error',
        'Please select or write number phase',
      );
      return;
    } else {
      context.read<CreateRequestBloc>().add(CreateRequestEvent.createRequest(
            int.parse(selectedTitle!),
            selectedWarehouseId!,
            selectedRelatedInformation!,
            int.parse(_phaseController.text),
            _descriptionController.text,
          ));
      return;
    }
    // final newRequest = CreateRequest(
    //   title: selectedTitle!,
    //   warehouseId: selectedWarehouseId!,
    //   description: newDescription!,
    //   relatedInformation: selectedRelatedInformation!,
    // );
    // context.read<CreateRequestBloc>().add(
    //       CreateRequestEvent.createRequest(newRequest),
    //     );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      // elevation: 0,
      isScrollControlled: true,
      // constraints: BoxConstraints(
      //   maxHeight: MediaQuery.of(context).size.height * 0.8,
      // ),
      context: context,
      builder: (context) {
        List<String> listItem = [
          'Order Confirmation Request',
          'Inbound Shipment Request',
          'Outbound Shipment Request',
          'Quality Control Request'
        ];
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
                left: AppSizes.md, right: AppSizes.md, bottom: AppSizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    'Add New Request',
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
                            'Please fill in the form below to create a new request.',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
                _buildDropdown(
                  // width: MediaQuery.of(context).size.width * 0.8,
                  showLabel: true,
                  label: 'Select Request Title',
                  requestFocusOnTap: false,
                  enabledSearch: false,
                  enabledFilter: false,
                  hintText: 'Select Request Title',
                  context: context,
                  listItem: listItem,
                  getLabel: (item) => '${item.characters}',
                  controller: _titleController,
                  onSelected: (String? newTitle) {
                    if (newTitle != null) {
                      // Kiểm tra null
                      setState(
                        () {
                          selectedTitle = listItem.indexOf(newTitle).toString();
                          if (selectedWarehouseId != null) {
                            context.read<CreateRequestBloc>().add(
                                  CreateRequestEvent.fetRequestPurchaseOrders(
                                      int.parse(selectedTitle!),
                                      selectedWarehouseId!),
                                ); // Fetch ngay khi có đủ thông tin
                          }
                        },
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
                BlocConsumer<WarehouseBloc, WarehouseState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      error: (error) => DelightfulToastHelper.error(
                        context,
                        'Fetch Warehouse Error',
                        'Please try reload the page again',
                      ),
                      empty: (message) => DelightfulToastHelper.toast(
                        context,
                        'No Warehouse Found',
                        'Please create a new warehouse first',
                      ),
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (warehouses) {
                        return _buildDropdown(
                          // width: MediaQuery.of(context).size.width,
                          showLabel: true,
                          label: 'Select Warehouse',
                          requestFocusOnTap: false,
                          enabledSearch: false,
                          enabledFilter: false,
                          hintText: 'Select Warehouse',
                          context: context,
                          listItem: warehouses,
                          getLabel: (item) => '${item.type} Warehouse',
                          controller: _warehouseController,
                          onSelected: (newWarehouseId) {
                            if (newWarehouseId != null) {
                              // Kiểm tra null
                              setState(
                                () {
                                  selectedWarehouseId = newWarehouseId.id;
                                  if (selectedTitle != null) {
                                    context.read<CreateRequestBloc>().add(
                                          CreateRequestEvent
                                              .fetRequestPurchaseOrders(
                                                  int.parse(selectedTitle!),
                                                  newWarehouseId.id),
                                        ); // Fetch ngay khi có đủ thông tin
                                  }
                                },
                              );
                            }
                          },
                        );
                      },
                      orElse: () => SizedBox(
                        child: Center(
                          child: Text(
                            'Oops! Something went wrong',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                      labelText: 'Description',
                      labelStyle: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: AppColors.textSecondary,
                          ),
                      // hintText: 'Description',
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(8),
                      // ),
                    ),
                    maxLines: null,
                    onSaved: (newValue) {
                      _descriptionController.text = newValue!;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please fill description';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
                BlocConsumer<CreateRequestBloc, CreateRequestState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      puchaseOrdersError: (error) {
                        debugPrint('Error: $error');
                        DelightfulToastHelper.error(
                          context,
                          'Fetch Purchase Orders Error',
                          error.toString(),
                        );
                      },
                      purchaseOrderEmpty: (message) =>
                          DelightfulToastHelper.toast(
                        context,
                        'No Purchase Orders Found',
                        message.toString(),
                      ),
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      puchaseOrdersLoaded: (purchaseOrders, phaseOptions) {
                        listRelatedInformation = purchaseOrders;
                        return _buildDropdown(
                          // width: MediaQuery.of(context).size.width,
                          showLabel: true,
                          label: 'Select Relate Information',
                          hintText: 'Select Relate Information',
                          enabled: true,
                          enabledSearch: false,
                          enabledFilter: false,
                          requestFocusOnTap: false,
                          context: context,
                          listItem: purchaseOrders,
                          getLabel: (item) => item.poCode,
                          controller: _relatedInformationController,
                          // searchCallback: (purchaseOrders, selectedPurchaseOrder) => 0,
                          onSelected: (purchaseOrders) {
                            if (purchaseOrders != null) {
                              // _relatedInformationController.text =
                              //     'PO ${purchaseOrders.poCode}';
                              selectedRelatedInformation =
                                  purchaseOrders.poCode;
                              context.read<CreateRequestBloc>().add(
                                  CreateRequestEvent.selectPurchaseOrder(
                                      listRelatedInformation, purchaseOrders));
                            }
                          },
                        );
                      },
                      orElse: () => const SizedBox(),
                    );
                  },
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
                BlocConsumer<CreateRequestBloc, CreateRequestState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return state.maybeWhen(
                        puchaseOrdersLoaded:
                            (puchaseOrdersLoaded, phaseOptions) {
                          return CustomRoundedContainer(
                            child: _buildDropdown(
                              showLabel: true,
                              label: 'Select Phase',
                              requestFocusOnTap: true,
                              context: context,
                              listItem: phaseOptions ?? [],
                              getLabel: (item) => item,
                              controller: _phaseController,
                              onSelected: (value) {
                                if (value != null) {
                                  _phaseController.text = value;
                                  selectedPhase = value;

                                  // puchaseOrdersLoaded
                                  //     .map((e) => 'PO ${e.poCode}');
                                }
                              },
                            ),
                          );
                        },
                        orElse: () => const SizedBox());
                  },
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
                _buildBottomButton(context),
                const SizedBox(
                  height: AppSizes.spaceBtwItems,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    _getAllRequest(listStatuses);
    _getAllWarehouse();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _descriptionController.dispose();
    _relatedInformationController.dispose();
    _phaseController.dispose();
    _warehouseController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.backgroundSecondary,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          _showBottomSheet();
        },
        child: const Icon(
          Icons.add,
          color: AppColors.white,
        ),
      ),
      body: BlocConsumer<RequestBloc, RequestState>(
        listener: (context, state) {
          state.whenOrNull(
            requestsByStatusesError: (error) => DelightfulToastHelper.error(
                context,
                'Fetch List Request Error',
                'Please try reload the page again'),
            requestsByStatusesEmpty: (message) => DelightfulToastHelper.toast(
                context,
                'No Request Found',
                'Please create a new request first'),
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            empty: (message) => Center(
              child: Text(
                message.toString(),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            requestsByStatusesLoading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            requestsByStatusesLoaded: (requests) => Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: Padding(
                      padding: const EdgeInsets.all(AppSizes.spaceBtwItems),
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: AppSizes.md),
                        itemCount: requests.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              /// Navigate to Request Detail Screen
                            },
                            child: ItemRequest(
                              request: requests[index],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            orElse: () => const SizedBox(
              child: Center(
                child: Text('Oops! Something went wrong!'),
              ),
            ),
          );
        },
      ),
    );
  }

  DropdownMenu<T> _buildDropdown<T>({
    required BuildContext context,
    bool enabled = true,
    required List<T> listItem,
    required String Function(T) getLabel,
    required TextEditingController? controller,
    String? errorText,
    Function(T?)? onSelected,
    String? hintText,
    String? label,
    bool showLabel = false,
    bool enabledSearch = true,
    bool enabledFilter = true,
    bool requestFocusOnTap = true,
    int? Function(List<DropdownMenuEntry<T>>, String)? searchCallback,
    double? width,
  }) {
    return DropdownMenu(
      expandedInsets: EdgeInsets.zero,
      enabled: enabled,
      width: width,
      menuHeight: 200,
      controller: controller!,
      label: showLabel
          ? Text(
              label!,
              style: Theme.of(context).textTheme.bodyLarge!.apply(
                    color: AppColors.textSecondary,
                  ),
            )
          : Text(
              'Select Item',
              style: Theme.of(context).textTheme.bodyLarge!.apply(
                    color: AppColors.textSecondary,
                  ),
            ),
      textStyle: Theme.of(context)
          .textTheme
          .titleMedium!
          .apply(color: AppColors.textPrimary),
      dropdownMenuEntries: listItem
          .map(
            (item) => DropdownMenuEntry(
              value: item,
              label: getLabel(item),
            ),
          )
          .toList(),
      onSelected: onSelected,
      enableSearch: enabledSearch,
      requestFocusOnTap: requestFocusOnTap,
      enableFilter: enabledFilter,
      errorText: errorText,
      hintText: hintText,
      searchCallback: searchCallback,
    );
  }

  Widget _buildBottomButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        /// Clear button
        ElevatedButton(
          onPressed: () {
            _clear();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.white),
          ),
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

        /// Add new request button
        BlocListener<CreateRequestBloc, CreateRequestState>(
          listener: (context, state) {
            state.whenOrNull(
              createRequestFailure: (error) {
                DelightfulToastHelper.error(
                  context,
                  'Create Request Error',
                  error.toString(),
                );
                _clear();
                context.pop();
              },
              createRequestSuccess: () {
                DelightfulToastHelper.success(
                  context,
                  'Create Request successfully',
                  'A new request has been created, waiting for the request to be approved',
                );
                _clear();
                context.pop();
              },
            );
          },
          child: ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                _createButtonPressed();
              }
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.primary),
            ),
            child: Text(
              'Next',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: AppColors.textWhite,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
