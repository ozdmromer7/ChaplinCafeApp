import 'package:chaplin_cafe_app/features/components/elevated_button.dart';
import 'package:chaplin_cafe_app/features/components/login_text_field.dart';
import 'package:chaplin_cafe_app/features/domain/entities/register.dart';
import 'package:chaplin_cafe_app/features/presentation/auth/register/register_state.dart';
import 'package:chaplin_cafe_app/features/presentation/auth/register/register_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final mailController = TextEditingController();
  final birthDateController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterViewModel(),
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(children: [
                Text(
                  'Register',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(color: Colors.red),
                ),
                const SizedBox(
                  height: 20,
                ),
                LoginText(
                    controller: nameController,
                    prefixIcon: Icon(Icons.mail),
                    hintText: 'Adınızı Giriniz'),
                const SizedBox(
                  height: 20,
                ),
                LoginText(
                    controller: surnameController,
                    prefixIcon: Icon(Icons.mail),
                    hintText: 'Soyadınızı Giriniz'),
                const SizedBox(
                  height: 20,
                ),
                LoginText(
                    controller: mobileNumberController,
                    prefixIcon: Icon(Icons.mail),
                    hintText: 'Telefon No Giriniz'),
                const SizedBox(
                  height: 20,
                ),
                LoginText(
                    controller: mailController,
                    prefixIcon: Icon(Icons.mail),
                    hintText: 'Mail Giriniz'),
                const SizedBox(
                  height: 20,
                ),
                LoginText(
                    controller: birthDateController,
                    prefixIcon: Icon(Icons.mail),
                    hintText: 'Doğum Tarihi Giriniz'),
                const SizedBox(
                  height: 20,
                ),
                BlocConsumer<RegisterViewModel, RegisterState>(
                  builder: (context, state) {
                    return CustomElevatedButton(
                        onPressed: () {
                          context
                              .read<RegisterViewModel>()
                              .register(Register());
                        },
                        buttonText: 'Üye Ol');
                  },
                  listener: (BuildContext context, Object? state) {},
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
