import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:libary_messaging_system/router.gr.dart';
import 'package:libary_messaging_system/screens/authentication/bloc/auth_bloc.dart';
import 'package:libary_messaging_system/screens/authentication/bloc/auth_state.dart';
import 'package:libary_messaging_system/screens/authentication/repository/auth_repository.dart';
import 'package:libary_messaging_system/screens/home_screen/bloc/home_screen_bloc.dart';
import 'package:libary_messaging_system/screens/home_screen/bloc/home_screen_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(initialState: AuthState.unknown()),
        ),
        BlocProvider(
          create: (context) =>
              HomeScreenBloc(initialState: HomeScreenState.loading()),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
