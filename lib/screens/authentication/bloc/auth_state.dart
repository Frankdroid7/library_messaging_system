import 'package:equatable/equatable.dart';
import 'package:libary_messaging_system/screens/authentication/models/auth_model.dart';

enum AuthStatus { unknown, loading, authenticated, unauthenticated, error }

class AuthState extends Equatable {
  final String? error;
  final AuthStatus status;
  final AuthModel? authModel;

  const AuthState(this.status, {this.error, this.authModel});
  @override
  List<Object> get props => [status];

  const AuthState.unknown() : this(AuthStatus.unknown);
  const AuthState.loading() : this(AuthStatus.loading);
  const AuthState.unauthenticated() : this(AuthStatus.unauthenticated);
  const AuthState.error(String error) : this(AuthStatus.error, error: error);
  const AuthState.authenticated(AuthModel authModel)
      : this(AuthStatus.authenticated, authModel: authModel);
}
