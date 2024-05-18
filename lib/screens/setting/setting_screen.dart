import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/common/widgets/appbar.dart';
import 'package:fwms_rm_app/common/widgets/circle_image.dart';
import 'package:fwms_rm_app/common/widgets/rounded_container.dart';
import 'package:fwms_rm_app/common/widgets/section_heading.dart';
import 'package:fwms_rm_app/common/widgets/setting_menu_tile.dart';
import 'package:fwms_rm_app/config/router/router.dart';
import 'package:fwms_rm_app/features/auth/bloc/auth_bloc.dart';
import 'package:fwms_rm_app/features/user/bloc/user_bloc.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/helpers/delightful_toast_helper.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    context.read<UserBloc>().add(const UserEvent.getUserDetail());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: AppColors.white,
        title: Text(
          'Setting',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: AppColors.black),
        ),
      ),
      body: Material(
        color: AppColors.backgroundSecondary,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocConsumer<UserBloc, UserState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.maybeWhen(
                      userDetailLoading: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                      userDetailLoaded: (userDetail) {
                        return CustomRoundedContainer(
                          radius: 0,
                          width: double.infinity,
                          showBorder: false,
                          padding: const EdgeInsets.symmetric(
                            vertical: AppSizes.md,
                          ),
                          margin: const EdgeInsets.only(
                            top: AppSizes.md,
                          ),
                          child: ListTile(
                            leading: CustomCircleImage(
                              isNetworkImage: true,
                              image: userDetail.avatar ??
                                  'https://icon-library.com/images/default-user-icon/default-user-icon-13.jpg',
                              width: 50,
                              height: 50,
                              padding: 0,
                            ),
                            title: Text(userDetail.name ?? ''),
                            subtitle: Text(userDetail.status ?? ''),
                            trailing: IconButton(
                              onPressed: () {
                                context.push('/profile');
                              },
                              icon: const Icon(Iconsax.arrow_right_3),
                            ),
                          ),
                        );
                      },
                      orElse: () => const SizedBox());
                },
              ),
              // const SizedBox(height: AppSizes.spaceBtwItems),
              CustomRoundedContainer(
                radius: 0,
                width: double.infinity,
                showBorder: false,
                padding: const EdgeInsets.all(AppSizes.md),
                margin: const EdgeInsets.only(
                  top: AppSizes.md,
                ),
                child: Column(
                  children: [
                    const CustomSectionHeading(
                      title: 'Account Setting',
                      showActionButton: false,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    CustomSettingMenuTile(
                      icon: Iconsax.task_square,
                      title: 'My Todos',
                      subTitle: 'Put your to-do list on today',
                      trailing: const Icon(Iconsax.arrow_right_3),
                      onTap: () {},
                    ),
                    CustomSettingMenuTile(
                      icon: Iconsax.password_check,
                      title: 'Change my password',
                      subTitle: 'Change your password regularly to avoid risks',
                      trailing: const Icon(Iconsax.arrow_right_3),
                      onTap: () {},
                    ),
                    CustomSettingMenuTile(
                      icon: Iconsax.people,
                      title: 'Account Privacy',
                      subTitle: 'Set your account privacy',
                      trailing: const Icon(Iconsax.arrow_right_3),
                      onTap: () {},
                    ),
                    BlocListener<AuthBloc, AuthState>(
                      listener: (context, state) {
                        switch (state) {
                          case AuthLogoutSuccess():
                            context.read<AuthBloc>().add(AuthStarted());
                            context.go('/login');
                            break;
                          case AuthLogoutFailure(message: final msg):
                            DelightfulToastHelper.error(context, 'Error', msg);
                            break;
                          default:
                        }
                      },
                      child: CustomSettingMenuTile(
                        icon: Iconsax.logout,
                        title: 'Log out',
                        subTitle: 'Log out of the application',
                        trailing: const Icon(Iconsax.arrow_right_3),
                        onTap: () {
                          context.read<AuthBloc>().add(AuthLogoutStarted());
                        },
                      ),
                    ),
                  ],
                ),
              ),
              CustomRoundedContainer(
                radius: 0,
                width: double.infinity,
                showBorder: false,
                padding: const EdgeInsets.all(AppSizes.md),
                margin: const EdgeInsets.only(
                  top: AppSizes.md,
                ),
                child: Column(
                  children: [
                    const CustomSectionHeading(
                      title: 'App Setting',
                      showActionButton: false,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    CustomSettingMenuTile(
                      icon: Iconsax.task,
                      title: 'Change Dark Mode',
                      subTitle: 'Change theme app to dark',
                      trailing: Switch(value: false, onChanged: (value) {}),
                      onTap: () {},
                    ),
                    CustomSettingMenuTile(
                      icon: Iconsax.book_square,
                      title: 'App Guide',
                      subTitle: 'Find tips how to use the application',
                      trailing: const Icon(Iconsax.arrow_right_3),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
            ],
          ),
        ),
      ),
    );
  }
}
