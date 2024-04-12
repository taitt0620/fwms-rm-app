import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fwms_rm_app/features/auth/bloc/auth_bloc.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';
import 'package:fwms_rm_app/utils/constants/text_strings.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleSignIn(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
            AuthSignInStarted(
              username: _usernameController.text,
              password: _passwordController.text,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    _formKey.currentState?.validate();
    return Form(
      key: _formKey,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Image(
                    image: AssetImage(AppImages.iconZalando),
                    width: 24,
                    height: 24,
                  ),
                  labelText: AppTexts.usernameTitle,
                ),
                controller: _usernameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppTexts.enterUsernameTitle;
                  }
                  return null;
                }),
            SizedBox(height: AppSizes.spaceBtwInputField),
            TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Image(
                    image: AssetImage(AppImages.iconPassword),
                    width: 24,
                    height: 24,
                  ),
                  labelText: AppTexts.passwordTitle,
                  suffixIcon: Image(
                    image: AssetImage(AppImages.iconInvisible),
                    width: 24,
                    height: 24,
                  ),
                ),
                controller: _passwordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return AppTexts.enterPasswordTitle;
                  }
                  return null;
                }),
            SizedBox(height: AppSizes.spaceBtwInputField / 2),

            //Remember me and Forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //Remember me
                    Checkbox(
                        value: true,
                        onChanged: (value) {
                          Text(AppTexts.rememberMeTitle);
                        }),
                    Text(AppTexts.rememberMeTitle),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(AppTexts.forgotPasswordTitle)),
              ],
            ),
            SizedBox(height: AppSizes.spaceBtwSections),

            // Login and Contact Us buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _handleSignIn(context);
                },
                child: Text(AppTexts.loginButtonTitle),
              ),
            ),
            SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(AppTexts.contactUsTitle),
              ),
            ),
            SizedBox(height: AppSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
