import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/info_row.dart';
import 'package:fwms_rm_app/common/widgets/loading_indicator_dialog.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/bloc/create_quality_control_report_bloc.dart';
import 'package:fwms_rm_app/features/create_quality_control_report/models/create_quality_control_report.dart';
import 'package:fwms_rm_app/features/request/models/relate_information.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';
import 'package:fwms_rm_app/utils/helpers/delightful_toast_helper.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class RelateInfoDetailScreen extends StatefulWidget {
  const RelateInfoDetailScreen(
      {super.key, required this.ri, required this.requestId});

  final RelateInformation ri;
  final String? requestId;
  @override
  State<RelateInfoDetailScreen> createState() => _RelateInfoDetailScreenState();
}

class _RelateInfoDetailScreenState extends State<RelateInfoDetailScreen> {
  CreateQualityControlReport? report;

  final TextEditingController uriController = TextEditingController();
  final TextEditingController concludeController = TextEditingController();
  final TextEditingController poCodeController = TextEditingController();
  final TextEditingController phaseController = TextEditingController();
  final TextEditingController poFaxController = TextEditingController();
  final TextEditingController supplierController = TextEditingController();
  final TextEditingController licensePlateController = TextEditingController();
  final TextEditingController commentsController = TextEditingController();
  final TextEditingController materialNameController = TextEditingController();
  final TextEditingController unitController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController numberOfChecksController =
      TextEditingController();
  final TextEditingController sizeController = TextEditingController();
  final TextEditingController methodController = TextEditingController();
  final TextEditingController quantitativeController = TextEditingController();
  final TextEditingController externalInspectionController =
      TextEditingController();
  final TextEditingController quantityAchievedController =
      TextEditingController();
  final TextEditingController quantityNotReachedController =
      TextEditingController();

  void _showEditMaterialTable(BuildContext context,
      CreateQualityControlReport report, QualityControlReportDetails item) {
    showBottomSheet(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.8,
      ),
      context: context,
      builder: (builder) {
        final formKey = GlobalKey<FormState>();
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
              children: [
                Center(
                  child: Text(
                    'Edit Material Details',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: () {
                    Form.of(primaryFocus!.context!).save();
                  },
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                          // initialValue: item.materialName,
                          controller: materialNameController,
                          decoration: const InputDecoration(
                            labelText: 'Material Name',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please fill material name';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            materialNameController.text = value.toString();
                          },
                          onChanged: (value) {}),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      TextFormField(
                        // initialValue: item.quantity.toString(),
                        controller: quantityController,
                        decoration: const InputDecoration(
                          labelText: 'Quantity',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill quantity';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          quantityController.text = value.toString();
                        },
                        // onChanged: (value) => setState(() =>
                        //     item = item.copyWith(quantity: int.parse(value))),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      TextFormField(
                        // initialValue: item.unit,
                        controller: unitController,
                        decoration: const InputDecoration(
                          labelText: 'Unit',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill unit';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          unitController.text = value.toString();
                        },
                        // onChanged: (value) =>
                        //     setState(() => item = item.copyWith(unit: value)),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      TextFormField(
                        // initialValue: item.numberOfChecks.toString(),
                        controller: numberOfChecksController,
                        decoration: const InputDecoration(
                          labelText: 'Number of Checks',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill number of checks';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          numberOfChecksController.text = value.toString();
                        },
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      TextFormField(
                        // initialValue: item.size,
                        controller: sizeController,
                        decoration: const InputDecoration(
                          labelText: 'Size',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill size';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          sizeController.text = value.toString();
                        },
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      TextFormField(
                        // initialValue: item.method,
                        controller: methodController,
                        decoration: const InputDecoration(
                          labelText: 'Method',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill method';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          methodController.text = value.toString();
                        },
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      TextFormField(
                        // initialValue: item.quantitative,
                        controller: quantitativeController,
                        decoration: const InputDecoration(
                          labelText: 'Quantitative',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill quantitative';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          quantitativeController.text = value.toString();
                        },
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      TextFormField(
                        // initialValue: item.externalInspection,
                        controller: externalInspectionController,
                        decoration: const InputDecoration(
                          labelText: 'External Inspection',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill external inspection';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          externalInspectionController.text = value.toString();
                        },
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      TextFormField(
                        // initialValue: item.quantityAchieved.toString(),
                        controller: quantityAchievedController,
                        decoration: const InputDecoration(
                          labelText: 'Quantity Achieved',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill quantity achieved';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          quantityAchievedController.text = value.toString();
                        },
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      TextFormField(
                        // initialValue: item.quantityNotReached.toString(),
                        controller: quantityNotReachedController,
                        decoration: const InputDecoration(
                          labelText: 'Quantity Not Reached',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill quantity not reached';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          quantityNotReachedController.text = value.toString();
                        },
                        onChanged: (value) {},
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      CustomRoundedContainer(
                        width: double.infinity,
                        showBorder: false,
                        // margin: const EdgeInsets.only(
                        //   left: AppSizes.md,
                        //   right: AppSizes.md,
                        //   bottom: AppSizes.md,
                        // ),
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();

                              int index = report.qualityControlReportDetails
                                  .indexOf(item);
                              debugPrint('Index: $index');
                              QualityControlReportDetails updatedItem =
                                  item.copyWith(
                                materialName: materialNameController.text,
                                quantity: int.parse(quantityController.text),
                                unit: unitController.text,
                                numberOfChecks:
                                    int.parse(numberOfChecksController.text),
                                size: sizeController.text,
                                method: methodController.text,
                                quantitative: quantitativeController.text,
                                externalInspection:
                                    externalInspectionController.text,
                                quantityAchieved:
                                    int.parse(quantityAchievedController.text),
                                quantityNotReached: int.parse(
                                    quantityNotReachedController.text),
                              );
                              debugPrint('Updated Item: $updatedItem');

                              context
                                  .read<CreateQualityControlReportBloc>()
                                  .add(
                                    CreateQualityControlReportEvent.updateItem(
                                      index: index,
                                      item: updatedItem,
                                    ),
                                  );

                              // Add this line

                              context.pop(context);
                            }
                          },
                          child: const Text('Save'),
                        ),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _updateDataCellControllers(QualityControlReportDetails item) {
    materialNameController.text = item.materialName;
    quantityController.text = item.quantity.toString();
    unitController.text = item.unit;
    numberOfChecksController.text = item.numberOfChecks.toString();
    sizeController.text = item.size;
    methodController.text = item.method;
    quantitativeController.text = item.quantitative;
    externalInspectionController.text = item.externalInspection;
    quantityAchievedController.text = item.quantityAchieved.toString();
    quantityNotReachedController.text = item.quantityNotReached.toString();
  }

  void _updateRelateInfoControllers(CreateQualityControlReport report) {
    concludeController.text = report.conclude.toString();
    poCodeController.text = report.poCode;
    phaseController.text = report.phase.toString();
    poFaxController.text = report.poFax;
    supplierController.text = report.supplier;
    licensePlateController.text = report.licensePlate;
    commentsController.text = report.comments;
  }

  void _onDataCellLongPressed(QualityControlReportDetails item) {
    setState(() {
      _updateDataCellControllers(item);
    });
  }

  void _onRelateInfoLongPressed(CreateQualityControlReport report) {
    setState(() {
      _updateRelateInfoControllers(report);
    });
  }

  void _showEditRelateInfomation(
      BuildContext context, CreateQualityControlReport report) {
    showBottomSheet(
        // isDismissible: true,
        // isScrollControlled: true,
        // constraints: BoxConstraints(
        //   maxHeight: MediaQuery.of(context).size.height * 0.5,
        // ),
        context: context,
        builder: (builder) {
          final formKey = GlobalKey<FormState>();
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
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: () {
                  Form.of(primaryFocus!.context!).save();
                },
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        'Relate Infomation',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    // const SizedBox(height: AppSizes.spaceBtwItems),
                    TextFormField(
                      // autofocus: true,
                      // initialValue: item.poCode,
                      controller: poCodeController,
                      decoration: const InputDecoration(
                        labelText: 'PO Code',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill PO Code';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        poCodeController.text = value.toString();
                      },
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    TextFormField(
                      // initialValue: item.phase.toString(),
                      controller: phaseController,
                      decoration: const InputDecoration(
                        labelText: 'Phase',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill phase';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        phaseController.text = value.toString();
                      },
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    TextFormField(
                      // initialValue: item.poFax,
                      controller: poFaxController,
                      decoration: const InputDecoration(
                        labelText: 'PO Fax',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill PO Fax';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        poFaxController.text = value.toString();
                      },

                      // onChanged: (value) => setState(() => poFaxTxt = value),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    TextFormField(
                      // initialValue: item.supplier,
                      controller: supplierController,
                      decoration: const InputDecoration(
                        labelText: 'Supplier',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill supplier';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        supplierController.text = value.toString();
                      },

                      // onChanged: (value) => setState(() => supplierTxt = value),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    TextFormField(
                      // initialValue: item.licensePlate,
                      controller: licensePlateController,
                      decoration: const InputDecoration(
                        labelText: 'License Plate',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill license plate';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        uriController.text = value.toString();
                      },
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    CustomRoundedContainer(
                      width: double.infinity,
                      showBorder: false,
                      child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              CreateQualityControlReport updatedInfo =
                                  report.copyWith(
                                poCode: poCodeController.text,
                                phase: int.parse(phaseController.text),
                                poFax: poFaxController.text,
                                supplier: supplierController.text,
                                licensePlate: licensePlateController.text,
                              );
                              debugPrint('Updated Info: $updatedInfo');
                              context
                                  .read<CreateQualityControlReportBloc>()
                                  .add(CreateQualityControlReportEvent
                                      .updateInfomation(
                                    updatedInfo: updatedInfo,
                                  ));
                              context.pop(context);
                              debugPrint('Updated Info: $report');
                            }
                          },
                          child: const Text('Save')),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _showEditConclude(CreateQualityControlReport report) {
    showBottomSheet(
        context: context,
        builder: (builder) {
          final formKey = GlobalKey<FormState>();
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
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: () {
                  Form.of(primaryFocus!.context!).save();
                },
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        'Conclude',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    TextFormField(
                      controller: concludeController,
                      // initialValue: item.conclude.toString(),
                      decoration: const InputDecoration(
                        labelText: 'Conclude',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill conclude';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        concludeController.text = value.toString();
                      },
                      // onChanged: (value) => setState(() => uriTxt = value),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    CustomRoundedContainer(
                      width: double.infinity,
                      showBorder: false,
                      child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();

                              CreateQualityControlReport updatedInfo =
                                  report.copyWith(
                                conclude: int.parse(concludeController.text),
                              );
                              debugPrint('Updated Info: $updatedInfo');
                              context
                                  .read<CreateQualityControlReportBloc>()
                                  .add(CreateQualityControlReportEvent
                                      .updateInfomation(
                                    updatedInfo: updatedInfo,
                                  ));
                              context.pop(context);
                              debugPrint('Updated Info: $report');
                            }
                          },
                          child: const Text('Save')),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _showEditComment(CreateQualityControlReport report) {
    showBottomSheet(
        context: context,
        builder: (builder) {
          final formKey = GlobalKey<FormState>();
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
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: () {
                  Form.of(primaryFocus!.context!).save();
                },
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        'Comments',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    TextFormField(
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      // initialValue: item.comments.toString(),
                      controller: commentsController,
                      decoration: const InputDecoration(
                        labelText: 'Comments',
                        // border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill a comments';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        commentsController.text = value.toString();
                      },
                      // onChanged: (value) => setState(() => uriTxt = value),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            CreateQualityControlReport updatedInfo =
                                report.copyWith(
                              comments: commentsController.text,
                            );
                            debugPrint('Updated Info: $updatedInfo');
                            context.read<CreateQualityControlReportBloc>().add(
                                    CreateQualityControlReportEvent
                                        .updateInfomation(
                                  updatedInfo: updatedInfo,
                                ));
                            context.pop(context);
                            debugPrint('Updated Info: $report');
                          }
                        },
                        child: const Text('Save')),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void _convertRelateInformationToReport() {
    try {
      context.read<CreateQualityControlReportBloc>().add(
            CreateQualityControlReportEvent.updateReport(
                ri: widget.ri, updatedReport: report),
          );
      // context.read<CreateQualityControlReportBloc>().add(
      //       const CreateQualityControlReportEvent.loadReport(),
      //     );
    } catch (e) {
      print('Failed to convert relate information to report: $e');
    }
  }

  @override
  void initState() {
    _convertRelateInformationToReport();
    super.initState();
  }

  @override
  void dispose() {
    uriController.dispose();
    concludeController.dispose();
    poCodeController.dispose();
    phaseController.dispose();
    poFaxController.dispose();
    supplierController.dispose();
    licensePlateController.dispose();
    commentsController.dispose();
    materialNameController.dispose();
    unitController.dispose();
    quantityController.dispose();
    numberOfChecksController.dispose();
    sizeController.dispose();
    methodController.dispose();
    quantitativeController.dispose();
    externalInspectionController.dispose();
    quantityAchievedController.dispose();
    quantityNotReachedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.backgroundSecondary,
      child: BlocConsumer<CreateQualityControlReportBloc,
          CreateQualityControlReportState>(
        listener: (context, state) {
          state.whenOrNull(
            reportUpdateFailure: (error) => DelightfulToastHelper.error(
              context,
              'Error',
              'Retrive Purchase Order Failure',
            ),
            itemUpdateFailure: (error) => DelightfulToastHelper.error(
              context,
              'Error',
              'Update Date Cell Failure',
            ),
            reportUpdateSucess: (report) => DelightfulToastHelper.success(
              context,
              'Success',
              'Raw Quality Control Report Success',
            ),
            itemUpdateSucess: (report) => DelightfulToastHelper.success(
              context,
              'Success',
              'Update Quality Control Report Success',
            ),
            createReportFailure: (error) {
              DelightfulToastHelper.error(
                context,
                'Error',
                'Create Quality Control Report Failure',
              );
              context.go('/');
            },
            createReportSuccess: () {
              DelightfulToastHelper.success(
                context,
                'Success',
                'Create Quality Control Report Success',
              );
              context.go('/');
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            reportUpdateInProgress: () => const LoadingIndicatorDialog(),
            itemUpdateInProgress: () => const LoadingIndicatorDialog(),
            createReportInProgress: () => const LoadingIndicatorDialog(),
            reportUpdateSucess: (report) {
              return _buildBody(context, report!);
            },
            itemUpdateSucess: (report) {
              return _buildBody(context, report!);
            },
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, CreateQualityControlReport report) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          _buildTopConclude(context, report),
          _buildRelateInfo(context, report),
          _buildCenterDate(context, report),
          _buildMaterialTable(context, report),
          _buildComments(context, report),
          _buildSubmitButton(context, report, widget.requestId),
        ],
      ),
    );
  }

  Widget _buildSubmitButton(BuildContext context,
      CreateQualityControlReport report, String? requestId) {
    return CustomRoundedContainer(
      width: double.infinity,
      showBorder: false,
      // padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(
        left: AppSizes.md,
        right: AppSizes.md,
        bottom: AppSizes.md,
      ),
      child: ElevatedButton(
        child: const Text('Submit'),
        onPressed: () async {
          context.read<CreateQualityControlReportBloc>().add(
                CreateQualityControlReportEvent.createReport(
                  createdReport: report,
                  requestId: requestId!,
                ),
              );
        },
      ),
    );
  }

  Widget _buildMaterialTable(
      BuildContext context, CreateQualityControlReport report) {
    final columnNames = [
      'Name',
      'Quantity',
      'Unit',
      'Number of Checks',
      'Size',
      'Method',
      'Quantitative',
      'External Inspection',
      'Quantity Achieved',
      'Quantity Not Reached',
    ];
    final columns = columnNames
        .map((name) => DataColumn(
              label: Text(
                name,
                style: Theme.of(context).textTheme.bodyLarge!.apply(
                      color: AppColors.white,
                    ),
              ),
            ))
        .toList();
    return CustomRoundedContainer(
      width: double.infinity,
      showBorder: false,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(
        left: AppSizes.md,
        right: AppSizes.md,
        bottom: AppSizes.md,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Material List',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                showCheckboxColumn: false,
                headingRowColor: MaterialStateProperty.all(AppColors.primary),
                columns: columns,
                rows: report.qualityControlReportDetails
                    .map(
                      (item) => DataRow(
                          cells: <DataCell>[
                            DataCell(Text(
                              item.materialName,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            DataCell(Text(
                              item.quantity.toString(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            )), // Assuming quantity is numeric
                            DataCell(Text(
                              item.unit,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )), // Assuming unitPrice is numeric
                            DataCell(Text(
                              item.numberOfChecks.toString(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            DataCell(Text(
                              item.size,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            DataCell(Text(
                              item.method,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            DataCell(Text(
                              item.quantitative,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            DataCell(Text(
                              item.externalInspection,
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            DataCell(Text(
                              item.quantityAchieved.toString(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                            DataCell(Text(
                              item.quantityNotReached.toString(),
                              style: Theme.of(context).textTheme.bodyMedium,
                            )),
                          ],
                          onLongPress: () {
                            _onDataCellLongPressed(item);
                            _showEditMaterialTable(context, report, item);
                          }),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRelateInfo(
      BuildContext context, CreateQualityControlReport report) {
    return GestureDetector(
      onLongPress: () {
        _onRelateInfoLongPressed(report);
        _showEditRelateInfomation(context, report);
      },
      child: CustomRoundedContainer(
        width: double.infinity,
        showBorder: false,
        padding: const EdgeInsets.all(AppSizes.md),
        margin: const EdgeInsets.only(
          left: AppSizes.md,
          right: AppSizes.md,
          bottom: AppSizes.md,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 40,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center, // Center the text
                    child: Text(
                      'Relate Infomation',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: const Icon(
                          Iconsax.edit,
                          size: 20,
                        ),
                        onPressed: () {},
                      )),
                ],
              ),
            ),
            AdvancedInfoRow(
              title: 'PO Code',
              value: report.poCode,
            ),
            AdvancedInfoRow(
              title: 'Phase',
              value: report.phase.toString(),
            ),
            AdvancedInfoRow(
              title: 'PO Fax',
              value: report.poFax,
            ),
            AdvancedInfoRow(
              title: 'Supllier',
              value: report.supplier,
            ),
            AdvancedInfoRow(
              title: 'LicensePlate',
              value: report.licensePlate,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildComments(
      BuildContext context, CreateQualityControlReport report) {
    return GestureDetector(
      onLongPress: () {
        _onRelateInfoLongPressed(report);
        _showEditComment(report);
      },
      child: CustomRoundedContainer(
        width: double.infinity,
        showBorder: false,
        padding: const EdgeInsets.all(AppSizes.md),
        margin: const EdgeInsets.only(
          left: AppSizes.md,
          right: AppSizes.md,
          bottom: AppSizes.md,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text(
                'Comments',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              report.comments.trim().isEmpty ? 'N/A' : report.comments,
              style: Theme.of(context).textTheme.bodyMedium,
              textDirection: TextDirection.rtl,
              maxLines: null,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCenterDate(
      BuildContext context, CreateQualityControlReport report) {
    return CustomRoundedContainer(
      width: double.infinity,
      showBorder: false,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(
        left: AppSizes.md,
        right: AppSizes.md,
        bottom: AppSizes.md,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              'Inspection Date',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          AdvancedInfoRow(
            title: 'Inspection Date',
            value: AppFormatter.formatDate(report.inspectionDate),
          ),
          AdvancedInfoRow(
            title: 'Receip Date',
            value: AppFormatter.formatDate(report.receiptDate),
          ),
        ],
      ),
    );
  }

  Widget _buildTopConclude(
      BuildContext context, CreateQualityControlReport report) {
    return GestureDetector(
      onLongPress: () {
        _onRelateInfoLongPressed(report);
        _showEditConclude(report);
      },
      child: CustomRoundedContainer(
        width: double.infinity,
        showBorder: false,
        padding: const EdgeInsets.all(AppSizes.md),
        margin: const EdgeInsets.all(AppSizes.md),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Text(
                'Conclude',
                style: Theme.of(context).textTheme.bodyLarge,
                textDirection: TextDirection.ltr,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                AppFormatter.addSpaces(report.conclude.toString()),
                style: Theme.of(context).textTheme.bodyLarge!.apply(
                    // color: pop.status == 'WaitForConfirmation'
                    //     ? Colors.blue
                    //     : pop.status == 'InProgress'
                    //         ? Colors.yellow
                    //         : pop.status == 'Obtain'
                    //             ? Colors.green
                    //             : pop.status == 'Rejected'
                    //                 ? Colors.red
                    //                 : Colors.black,
                    ),
                textDirection: TextDirection.rtl,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
