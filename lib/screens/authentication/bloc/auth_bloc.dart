import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:libary_messaging_system/screens/authentication/bloc/auth_event.dart';
import 'package:libary_messaging_system/screens/authentication/bloc/auth_state.dart';
import 'package:libary_messaging_system/screens/authentication/repository/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required AuthState initialState}) : super(AuthState.unknown()) {
    on<LoginRequestEvent>(_processLoginRequest);
    on<LogOutRequestEvent>(_processLogOutRequest);
  }

  void _processLoginRequest(
      LoginRequestEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());

    if (AuthRepository.authModelList
        .toString()
        .contains(event.authModel.toString())) {
      try {
        await AuthRepository.addUser(event.authModel.email);
        emit(AuthState.authenticated(event.authModel));
      } on FirebaseException catch (e) {
        emit(AuthState.error(e.code));
      } catch (e) {
        emit(AuthState.error(e.toString()));
      }
    } else {
      emit(AuthState.error('Wrong Credentials'));
    }
  }

  void _processLogOutRequest(
      LogOutRequestEvent event, Emitter<AuthState> emit) {
    emit(AuthState.unauthenticated());
  }
}
