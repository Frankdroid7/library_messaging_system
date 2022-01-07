import 'package:libary_messaging_system/screens/authentication/models/auth_model.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class LoginRequestEvent extends AuthEvent {
  final AuthModel authModel;

  LoginRequestEvent({required this.authModel});
}

class LogOutRequestEvent extends AuthEvent {}
