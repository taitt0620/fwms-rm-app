import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/features/user/bloc/user_bloc.dart';
import 'package:fwms_rm_app/features/user/models/update_user.dart';
import 'package:fwms_rm_app/screens/profile/widgets/item_text_menu.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:go_router/go_router.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen(
      {super.key,
      required this.name,
      required this.userName,
      required this.gender,
      required this.phone,
      required this.address});

  final String? name;
  final String? userName;
  final int? gender;
  final String? phone;
  final String? address;

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  var _autovalidateMode = AutovalidateMode.disabled;
  @override
  void initState() {
    _nameController.text = widget.name?.toString() ?? '';
    _userNameController.text = widget.userName?.toString() ?? '';
    _phoneController.text = widget.phone?.toString() ?? '';
    _addressController.text = widget.address?.toString() ?? '';
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _userNameController.dispose();
    _genderController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: AppColors.white,
        title: Text(
          'Edit Profile',
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
      body: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.md),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile details',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems / 2),
                      Text(
                        'Please enter all required information including your name, user name, gender, phone, address',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems / 2),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Required',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text: ' *',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.primary),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwInputField),
                  Form(
                    key: _formKey,
                    autovalidateMode: _autovalidateMode,
                    child: Column(
                      children: [
                        ItemTextMenu(
                          controller: _nameController,
                          title: 'Name',
                          hintText: 'Enter your new name',
                          errorText: 'Please enter your name',
                        ),
                        const SizedBox(height: AppSizes.spaceBtwInputField),
                        ItemTextMenu(
                          controller: _userNameController,
                          title: 'Username',
                          hintText: 'Enter your new username',
                          errorText: 'Please enter your username',
                        ),
                        const SizedBox(height: AppSizes.spaceBtwInputField),
                        ItemTextMenu(
                          controller: _phoneController,
                          keyboardType: TextInputType.phone,
                          title: 'Phone number',
                          hintText: 'Enter your new phone number',
                          errorText: 'Please enter phone number',
                        ),
                        const SizedBox(height: AppSizes.spaceBtwInputField),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Gender',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(fontWeight: FontWeight.w400),
                                  ),
                                  TextSpan(
                                    text: ' *',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.primary),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: AppSizes.spaceBtwItems / 2),
                            DropdownButtonFormField(
                              value: widget.gender,
                              items: const [
                                DropdownMenuItem(
                                  child: Text('Male'),
                                  value: 0,
                                ),
                                DropdownMenuItem(
                                  child: Text('Female'),
                                  value: 1,
                                ),
                              ],
                              hint: Text(
                                'Select gender',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(color: AppColors.textSecondary),
                              ),
                              onChanged: (value) {
                                _genderController.text = value.toString();
                                debugPrint("value: $value");
                              },
                              validator: (value) {
                                if (value == null || value == -1) {
                                  return 'Please select a gender';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: AppSizes.spaceBtwInputField),
                        ItemTextMenu(
                          controller: _addressController,
                          keyboardType: TextInputType.streetAddress,
                          title: 'Address',
                          hintText: 'Enter your new address',
                          errorText: 'Please enter address',
                        ),
                        const SizedBox(height: AppSizes.spaceBtwSections),
                        CustomRoundedContainer(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              _onHandleSaveButton(context);
                            },
                            child: Text(
                              'Save',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .apply(
                                    color: AppColors.white,
                                  ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _onHandleSaveButton(BuildContext context) {
    if (_autovalidateMode == AutovalidateMode.disabled) {
      setState(
        () {
          _autovalidateMode = AutovalidateMode.always;
        },
      );
    }
    if (_formKey.currentState!.validate()) {

      int? gender;
      try {
        gender = int.parse(_genderController.text);
      } catch (e) {
        // Handle the error here
        debugPrint('Error parsing gender: $e');
      }

      UpdateUser updatedUser = UpdateUser(
        name: _nameController.text,
        userName: _userNameController.text,
        gender: gender,
        phone: _phoneController.text,
        address: _addressController.text, 
      );
      debugPrint("updatedUser: $updatedUser");
      context.read<UserBloc>().add(UserEvent.updateUser(updatedUser));
      context.pop();
    }
  }
}
