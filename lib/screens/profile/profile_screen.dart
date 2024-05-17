import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/common/widgets/circle_image.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/common/widgets/section_heading.dart';
import 'package:fwms_rm_app/features/user/bloc/user_bloc.dart';
import 'package:fwms_rm_app/screens/profile/widgets/profile_menu.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/helpers/delightful_toast_helper.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void checkPermission() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.storage,
    ].request();
    if (statuses[Permission.camera] != PermissionStatus.granted ||
        statuses[Permission.storage] != PermissionStatus.granted) {
      DelightfulToastHelper.error(context, 'Permission Error',
          'Please allow camera and storage permission to choose profile picture');
      return;
    }
  }

  void pickedImageFromGalery() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.gallery);
    if (!mounted) return;
    if (image == null) return;
    context.read<UserBloc>().add(UserEvent.uploadAvatar(image));
  }

  void pickedImageFromCamera() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? image = await imagePicker.pickImage(source: ImageSource.camera);
    if (!mounted) return;
    if (image == null) return;
    context.read<UserBloc>().add(UserEvent.uploadAvatar(image));
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SizedBox(
            height: 150,
            child: Column(
              children: [
                CustomRoundedContainer(
                  child: ListTile(
                    leading: const Icon(Iconsax.camera),
                    title: Text('Camera',
                        style: Theme.of(context).textTheme.titleMedium),
                    onTap: () {
                      pickedImageFromCamera();
                      context.pop();
                    },
                  ),
                ),
                CustomRoundedContainer(
                  child: ListTile(
                    leading: const Icon(Iconsax.gallery),
                    title: Text('Gallery',
                        style: Theme.of(context).textTheme.titleMedium),
                    onTap: () {
                      pickedImageFromGalery();
                      context.pop();
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  void initState() {
    context.read<UserBloc>().add(const UserEvent.getUserDetail());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
        state.whenOrNull(
          uploadAvatarFailure: (message) {
            DelightfulToastHelper.error(
                context, 'Profile Picture', 'Error: $message');
            context.read<UserBloc>().add(const UserEvent.getUserDetail());
          },
          uploadAvatarSuccess: () {
            DelightfulToastHelper.success(
                context, 'Profile Picture', 'Profile picture updated');
            context.read<UserBloc>().add(const UserEvent.getUserDetail());
          },
          updateUserFailure: (message) {
            DelightfulToastHelper.error(
                context, 'User Error', 'Error: $message');
            context.read<UserBloc>().add(const UserEvent.getUserDetail());
          },
          updateUserSuccess: () {
            DelightfulToastHelper.success(
                context, 'User Updated', 'User updated successfully');
            context.read<UserBloc>().add(const UserEvent.getUserDetail());
          },
          userDetailError: (error) {
            DelightfulToastHelper.error(context, 'User Error', 'Error: $error');
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
            uploadAvatarLoading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            updateUserLoading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            userDetailLoading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            userDetailLoaded: (userDetail) {
              final int genderValue;
              if (userDetail.gender == 'Male') {
                genderValue = 0;
              } else {
                genderValue = 1;
              }
              return Scaffold(
                  appBar: CustomAppBar(
                    backgroundColor: AppColors.white,
                    title: Text(
                      'Profile',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: AppColors.black),
                    ),
                    showBackArrow: true,
                    onBackArrowPressed: () {
                      context.pop();
                    },
                    actions: [
                      TextButton(
                        onPressed: () {
                          context.push(
                              '/edit-profile?name=${userDetail.name}&userName=${userDetail.userName}&phone=${userDetail.phone}&address=${userDetail.address}&gender=$genderValue&phone=${userDetail.phone}');
                        },
                        child: Text(
                          'Edit',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .apply(color: AppColors.primary),
                        ),
                      ),
                    ],
                  ),
                  body: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSizes.defaultSpace),
                      child: Column(
                        children: [
                          /// Profile Picture
                          SizedBox(
                            width: double.infinity,
                            child: Column(
                              children: [
                                CustomCircleImage(
                                  isNetworkImage: true,
                                  image: userDetail.avatar ??
                                      'https://icon-library.com/images/default-user-icon/default-user-icon-13.jpg',
                                  width: 100,
                                  height: 100,
                                ),
                                TextButton(
                                  onPressed: () {
                                    // checkPermission();
                                    _showBottomSheet();
                                  },
                                  child: Text(
                                    'Change Profile Picture',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .apply(
                                          color: AppColors.primary,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: AppSizes.spaceBtwItems / 2),
                          const Divider(),
                          const SizedBox(height: AppSizes.spaceBtwItems / 2),

                          /// Profile Information
                          const CustomSectionHeading(
                            title: 'Account Information',
                            showActionButton: false,
                          ),
                          const SizedBox(height: AppSizes.spaceBtwItems),

                          ProfileMenu(
                            title: 'Name',
                            value: userDetail.name ?? '',
                            showActionIcon: true,
                            onPressed: () async {
                              await Clipboard.setData(
                                  ClipboardData(text: userDetail.name ?? ''));
                            },
                          ),
                          ProfileMenu(
                            title: 'Username',
                            value: userDetail.userName ?? '',
                            showActionIcon: true,
                            onPressed: () async {
                              await Clipboard.setData(ClipboardData(
                                  text: userDetail.userName ?? ''));
                            },
                          ),

                          const SizedBox(height: AppSizes.spaceBtwItems / 2),
                          const Divider(),
                          const SizedBox(height: AppSizes.spaceBtwItems / 2),

                          /// Personal Information
                          const CustomSectionHeading(
                            title: 'Personal Information',
                            showActionButton: false,
                          ),
                          const SizedBox(height: AppSizes.spaceBtwItems),

                          ProfileMenu(
                            title: 'Gender',
                            value: userDetail.gender ?? '',
                            onPressed: () {},
                          ),
                          ProfileMenu(
                            title: 'Phone',
                            value: userDetail.phone ?? '',
                            showActionIcon: true,
                            onPressed: () async {
                              await Clipboard.setData(
                                  ClipboardData(text: userDetail.phone ?? ''));
                            },
                          ),
                          ProfileMenu(
                            title: 'Address',
                            value: userDetail.address ?? '',
                            onPressed: () {},
                          ),
                          ProfileMenu(
                            title: 'Role',
                            value: userDetail.roleId ?? '',
                            onPressed: () {},
                          ),
                          ProfileMenu(
                            title: 'Status',
                            value: userDetail.status ?? '',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ));
            },
            orElse: () => const SizedBox());
      },
    );
  }
}
