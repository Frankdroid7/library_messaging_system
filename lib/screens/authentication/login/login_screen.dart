import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libary_messaging_system/common/widgets/action_button.dart';
import 'package:libary_messaging_system/common/widgets/custom_text_field.dart';
import 'package:libary_messaging_system/router.gr.dart';
import 'package:libary_messaging_system/screens/authentication/bloc/auth_bloc.dart';
import 'package:libary_messaging_system/screens/authentication/bloc/auth_event.dart';
import 'package:libary_messaging_system/screens/authentication/bloc/auth_state.dart';
import 'package:libary_messaging_system/screens/authentication/models/auth_model.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => _processListener(state),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) => Text(state.status.toString()),
                ),
                BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                  switch (state.status) {
                    case AuthStatus.loading:
                      return Center(child: CircularProgressIndicator());
                    case AuthStatus.error:
                      return Text(state.error!);
                    default:
                      return SizedBox.shrink();
                  }
                }),
                CustomTextField(
                  labelText: 'Email',
                  validator: (value) {},
                  errorText: 'Enter a valid email address',
                ),
                SizedBox(height: 10),
                CustomTextField(
                  labelText: 'Password',
                  validator: (value) {},
                  errorText: 'Enter a valid password',
                ),
                SizedBox(height: 10),
                CustomTextField(
                  labelText: 'Code',
                  validator: (value) {},
                  errorText: 'Enter a valid department code',
                ),
                SizedBox(height: 20),
                ActionButton(
                    title: 'Login Receptionist',
                    onPressed: () => BlocProvider.of<AuthBloc>(context).add(
                          LoginRequestEvent(
                            authModel: AuthModel(
                              passcode: 111,
                              password: 'password',
                              email: 'receptionist@funaablibrary.com',
                            ),
                          ),
                        )),
                SizedBox(height: 10),
                ActionButton(
                  title: 'Login E-learning',
                  onPressed: () => BlocProvider.of<AuthBloc>(context).add(
                    LoginRequestEvent(
                      authModel: AuthModel(
                        passcode: 222,
                        password: 'password',
                        email: 'e-learning@funaablibrary.com',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _processListener(AuthState state) {
    switch (state.status) {
      case AuthStatus.authenticated:
        context.replaceRoute(HomeScreen());
        break;
      case AuthStatus.unauthenticated:
        break;
      case AuthStatus.error:
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(state.error!),
        ));
        break;
      default:
        break;
    }
  }
}
