import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:ainechack/features/Auth/view/widgets/CustomButton.dart';
import 'package:ainechack/features/Auth/view/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class LoginScreenViewBody extends StatefulWidget {
  const LoginScreenViewBody({super.key});

  @override
  State<LoginScreenViewBody> createState() => _LoginScreenViewBodyState();
}

class _LoginScreenViewBodyState extends State<LoginScreenViewBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Login',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white),
              ),
              verticalSpace(16),
              Text(
                'Securely access Forest Eye with our user-friendly mobilelogin.Safeguard forests with ease on the go!',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              verticalSpace(32),
              CustomTextField(
                hintText: 'Email',
                prefixIcon: Assets.emailIcon,
                controller: emailController,
                isEmail: true,
              ),
              verticalSpace(16),
              CustomTextField(
                hintText: 'Password',
                prefixIcon: Assets.passwordIcon,
                isPassword: true,
                controller: passwordController,
              ),
              verticalSpace(24),
              const CustomButton(
                label: 'Login',
                minimumSize:   Size(double.infinity, 45),
                maximumSize:   Size(double.infinity, 45),
              ),
              verticalSpace(12),
              Center(
                child: Text('Forgot Password?',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.white)),
              ),
              verticalSpace(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 2.h,
                    width: 124.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Text('Or',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary)),
                  Container(
                    height: 2.h,
                    width: 124.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onPrimary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
              verticalSpace(16),
              Container(
                  height: 43.h,
                  width: context.screenWidth,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onBackground,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.googleIcon,
                        width: 32,
                        height: 32,
                      ),
                      horizontalSpace(8),
                      Text('Sign in with Google',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
