import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/info_row.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/bloc/create_good_receipt_note_bloc.dart';
import 'package:fwms_rm_app/features/create_good_receipt_note/models/create_good_receipt_note.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/formatters/formatter.dart';
import 'package:go_router/go_router.dart';

class ItemCreateGoodReceiptNote extends StatefulWidget {
  const ItemCreateGoodReceiptNote(
      {super.key, required this.note, this.requestId});

  final CreateGoodReceiptNote note;
  final String? requestId;
  @override
  State<ItemCreateGoodReceiptNote> createState() =>
      _ItemCreateGoodReceiptNoteState();
}

class _ItemCreateGoodReceiptNoteState extends State<ItemCreateGoodReceiptNote> {
  final TextEditingController uriController = TextEditingController();
  final TextEditingController noController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController poCodeController = TextEditingController();
  final TextEditingController phaseController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController materialNameController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController unitController = TextEditingController();
  final TextEditingController unitPriceController = TextEditingController();
  final TextEditingController subTotalController = TextEditingController();
  final TextEditingController importQuantityController =
      TextEditingController();

  /// Show the bottom sheet to edit the material details
  void _showEditMaterialTable(BuildContext context, CreateGoodReceiptNote note,
      GoodReceipNoteDetail detail) {
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
                        controller: unitPriceController,
                        decoration: const InputDecoration(
                          labelText: 'Unit Price',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill unit price';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          unitPriceController.text = value.toString();
                        },
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      TextFormField(
                        // initialValue: item.size,
                        controller: subTotalController,
                        decoration: const InputDecoration(
                          labelText: 'Sub Total',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill sub total';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          subTotalController.text = value.toString();
                        },
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      TextFormField(
                        // initialValue: item.method,
                        controller: importQuantityController,
                        decoration: const InputDecoration(
                          labelText: 'Import Quantity',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please fill import quantity';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          importQuantityController.text = value.toString();
                        },
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      CustomRoundedContainer(
                        width: double.infinity,
                        showBorder: false,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                                AppColors.primary),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();

                              // index of the item in the list
                              int index =
                                  note.goodReceipNoteDetails!.indexOf(detail);
                              debugPrint('Index: $index');

                              // update the item in the list
                              GoodReceipNoteDetail updatedItem =
                                  detail.copyWith(
                                materialName: materialNameController.text,
                                quantity: int.parse(quantityController.text),
                                unit: unitController.text,
                                unitPrice: int.parse(unitPriceController.text),
                                subTotal: int.parse(subTotalController.text),
                                importQuantity:
                                    int.parse(importQuantityController.text),
                              );
                              debugPrint('Updated Item: $updatedItem');

                              // update the list
                              context.read<CreateGoodReceiptNoteBloc>().add(
                                  CreateGoodReceiptNoteEvent.updateDetail(
                                      index: index, item: updatedItem));
                              // close the bottom sheet
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

  void _updateDataCellControllers(GoodReceipNoteDetail detail) {
    materialNameController.text = detail.materialName.toString();
    quantityController.text = detail.quantity.toString();
    unitController.text = detail.unit.toString();
    unitPriceController.text = detail.unitPrice.toString();
    subTotalController.text = detail.subTotal.toString();
    importQuantityController.text = detail.importQuantity.toString();
  }

  void _onDataCellLongPressed(GoodReceipNoteDetail detail) {
    setState(() {
      _updateDataCellControllers(detail);
    });
  }

  /// Show the bottom sheet to edit the note information
  void _showEditNoteInfo(BuildContext context, CreateGoodReceiptNote note) {
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
                        'Note Infomation',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    TextFormField(
                      controller: noController,
                      decoration: const InputDecoration(
                        labelText: 'No',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill no';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        noController.text = value.toString();
                      },
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please fill name';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        nameController.text = value.toString();
                      },
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    TextFormField(
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

                      // onChanged: (value) => setState(() => supplierTxt = value),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    CustomRoundedContainer(
                      width: double.infinity,
                      showBorder: false,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                                AppColors.primary),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              CreateGoodReceiptNote updatedInfo = note.copyWith(
                                no: noController.text,
                                name: nameController.text,
                                poCode: poCodeController.text,
                                phase: int.parse(phaseController.text),
                              );
                              debugPrint('Updated Note info: $updatedInfo');

                              context.read<CreateGoodReceiptNoteBloc>().add(
                                  CreateGoodReceiptNoteEvent.updateInfomation(
                                      updatedInfo: updatedInfo));

                              context.pop(context);
                              debugPrint('Updated Info: $note');
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

  void _updateInfoControllers(CreateGoodReceiptNote note) {
    noController.text = note.no.toString();
    nameController.text = note.name.toString();
    poCodeController.text = note.poCode.toString();
    phaseController.text = note.phase.toString();
  }

  void _onNoteInfoLongPressed(CreateGoodReceiptNote note) {
    setState(() {
      _updateInfoControllers(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomRoundedContainer(
      backgroundColor: AppColors.backgroundSecondary,
      radius: 0,
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            _buildGoodReceiptNoteInfo(context, widget.note),
            _buildCenterDate(context, widget.note),
            _buildMaterialTable(context, widget.note),
            _buildSubmitButton(context, widget.note, widget.requestId),
          ],
        ),
      ),
    );
  }

  Widget _buildGoodReceiptNoteInfo(
      BuildContext context, CreateGoodReceiptNote note) {
    return GestureDetector(
      onLongPress: () {
        _onNoteInfoLongPressed(note);
        _showEditNoteInfo(context, note);
      },
      child: CustomRoundedContainer(
        width: double.infinity,
        showBorder: false,
        padding: const EdgeInsets.all(AppSizes.md),
        margin: const EdgeInsets.all(AppSizes.md),
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
                      'Note Information',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ],
              ),
            ),
            AdvancedInfoRow(
              title: 'No',
              value: note.no,
            ),
            AdvancedInfoRow(
              title: 'Name',
              value: note.name,
            ),
            AdvancedInfoRow(
              title: 'PO Code',
              value: note.poCode,
            ),
            AdvancedInfoRow(
              title: 'Phase',
              value: note.phase.toString(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCenterDate(BuildContext context, CreateGoodReceiptNote note) {
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
              'Date',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          AdvancedInfoRow(
            title: 'Date Created',
            value: AppFormatter.formatDate(note.date),
          ),
        ],
      ),
    );
  }

  Widget _buildMaterialTable(BuildContext context, CreateGoodReceiptNote note) {
    final columnNames = [
      'Material Name',
      'Quantity',
      'Unit',
      'Unit Price',
      'Sub Total',
      'Import Quantity',
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
                headingRowColor: WidgetStateProperty.all(AppColors.primary),
                columns: columns,
                rows: note.goodReceipNoteDetails!
                    .map(
                      (item) => DataRow(
                        cells: <DataCell>[
                          DataCell(Text(
                            item.materialName ?? '',
                            style: Theme.of(context).textTheme.bodyMedium,
                          )),
                          DataCell(Text(
                            item.quantity.toString(),
                            style: Theme.of(context).textTheme.bodyMedium,
                          )), // Assuming quantity is numeric
                          DataCell(Text(
                            item.unit ?? '',
                            style: Theme.of(context).textTheme.bodyMedium,
                          )), // Assuming unitPrice is numeric
                          DataCell(Text(
                            item.unitPrice.toString(),
                            style: Theme.of(context).textTheme.bodyMedium,
                          )),
                          DataCell(Text(
                            item.subTotal.toString(),
                            style: Theme.of(context).textTheme.bodyMedium,
                          )),
                          DataCell(Text(
                            item.importQuantity.toString(),
                            style: Theme.of(context).textTheme.bodyMedium,
                          )),
                        ],
                        onLongPress: () {
                          _onDataCellLongPressed(item);
                          _showEditMaterialTable(context, note, item);
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitButton(
      BuildContext context, CreateGoodReceiptNote note, String? requestId) {
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
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all<Color>(AppColors.primary), // Button color
        ),
        child: const Text('Submit'),
        onPressed: () async {
          log('Note: ${note.toJson()}');
          context.read<CreateGoodReceiptNoteBloc>().add(
              CreateGoodReceiptNoteEvent.createNote(
                  createdNote: note, requestId: widget.requestId ?? ''));
          // context.pop(context);
        },
      ),
    );
  }
}
