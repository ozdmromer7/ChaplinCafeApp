import 'package:chaplin_cafe_app/config/routes/navigator_manager.dart';
import 'package:chaplin_cafe_app/config/routes/route_name.dart';
import 'package:chaplin_cafe_app/features/components/elevated_button.dart';
import 'package:chaplin_cafe_app/features/components/login_text_field.dart';
import 'package:chaplin_cafe_app/features/presentation/auth/login/login_state.dart';
import 'package:chaplin_cafe_app/features/presentation/auth/login/login_view_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/login.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => LoginViewModel()),
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Welcome Back',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(color: Colors.red),
                    ),
                    Text('Enjoy Your Meal',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(color: Colors.white)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      LoginText(
                        controller: userNameController,
                        prefixIcon: Icon(Icons.mail_rounded),
                        hintText: "Mail Giriniz",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      LoginText(
                        controller: passwordController,
                        prefixIcon: Icon(Icons.lock),
                        hintText: "Parola Giriniz",
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    BlocConsumer<LoginViewModel, LoginState>(
                      builder: (context, state) {
                        return CustomElevatedButton(
                          onPressed: () {
                            if (formKey.currentState?.validate() ?? false) {
                              context.read<LoginViewModel>().getLogin(Login(
                                    mail: userNameController.text,
                                    mobileNumber: userNameController.text,
                                    password: passwordController.text,
                                    branchId:
                                        "3fa85f64-5717-4562-b3fc-2c963f66afa6",
                                    companyId:
                                        "3fa85f64-5717-4562-b3fc-2c963f66afa6",
                                  ));
                            }
                          },
                          buttonText: 'Login'.tr(),
                          isLoading: state.isLoading,
                        );
                      },
                      listener: (BuildContext context, LoginState state) {
                        if (state.loginModelResponse?.isSuccess ?? false) {
                          NavigatorManager.instance
                              .pushReplacementNamedToWidget(
                                  routeName: RouteName.home);
                        }
                      },
                    ),
                    TextButton(
                        onPressed: () {
                          NavigatorManager.instance
                              .pushNamedToWidget(routeName: RouteName.register);
                        },
                        child: const Text(
                          'Kayit Ol',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
