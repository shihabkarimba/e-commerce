import 'package:e_commerce/Core/Constants/Usages/usages.dart';
import 'package:e_commerce/Core/Router/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Bloc/Login/login_bloc.dart';
import '../../../../Core/Constants/Validator/validator.dart';
import '../../../Shared/Widgets/toast_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (ctx, state) {
        switch (state) {
          case LoginErrorState(message: final message):
            showToast(msg: message, toastType: ToastType.error);
          case LoginLoadedState():
            router.goNamed(Routes.home.name);
          case LoginLoadingState():
          case LoginInitialState():
        }
      },
      builder: (ctx, state) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      'Hello Again!',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Welcome Back You’ve Been Missed!',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                    ),
                  ),
                  SizedBox(height: 50),
                  TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (email) {
                      if (!Validator.isValidEmail(email)) {
                        return Usages.emailErrorMessage;
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: Usages.email,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _password,
                    validator: (val) {
                      if (val == null || val.isEmpty || val.length < 4) {
                        return Usages.passwordErrorMessage;
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: Usages.password,
                    ),
                  ),
                  const SizedBox(height: 25),
                  switch (state) {
                    LoginLoadingState() =>
                      const Center(child: CircularProgressIndicator()),
                    LoginInitialState() ||
                    LoginLoadedState() ||
                    LoginErrorState() =>
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ctx.read<LoginBloc>().add(
                                  OnLoginButtonPressedEvent(
                                    email: _email.text.trim(),
                                    password: _password.text.trim(),
                                  ),
                                );
                          }
                        },
                        child: const Text(Usages.login),
                      ),
                  },
                  const SizedBox(height: 25),
                  if (state != LoginLoadingState())
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(Usages.dontHaveAccount),
                        TextButton(
                          onPressed: () {
                            router.goNamed(Routes.signup.name);
                          },
                          child: const Text(Usages.signup),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
