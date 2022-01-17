import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libary_messaging_system/common/repository/user_repository.dart';
import 'package:libary_messaging_system/common/widgets/custom_text_field.dart';
import 'package:libary_messaging_system/screens/add_broadcast_screen/bloc/add_broadcast_bloc.dart';
import 'package:libary_messaging_system/screens/add_broadcast_screen/bloc/add_broadcast_event.dart';
import 'package:libary_messaging_system/screens/add_broadcast_screen/bloc/add_broadcast_state.dart';

import '../../locator.dart';

class AddBroadcastScreen extends StatelessWidget {
  AddBroadcastScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController broadcastMsgCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddBroadcastBloc, AddBroadCastState>(
      listener: (context, state) {
        if (state.status == AddBroadcastStatus.done) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Broadcast message added successfully')));
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(
                      maxLines: 5,
                      controller: broadcastMsgCtrl,
                      validator: (value) => value.isNotEmpty,
                      hintText: 'Add Broadcast message',
                      errorText: 'Please add a broadcast message'),
                ),
                SizedBox(height: 20),
                BlocBuilder<AddBroadcastBloc, AddBroadCastState>(
                  builder: (context, state) {
                    switch (state.status) {
                      case AddBroadcastStatus.loading:
                        return CircularProgressIndicator();
                      default:
                        return ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<AddBroadcastBloc>().add(
                                    AddBroadcastEvent(
                                        documentId:
                                            getIt<UserRepository>().email!,
                                        broadcastMessage:
                                            broadcastMsgCtrl.text),
                                  );
                            }
                          },
                          child: Text('SEND BROADCAST MESSAGE'),
                        );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_processListener(AddBroadCastState state) {
  // AuthBloc authBloc = AuthBloc(initialState: AuthState.authenticated(authModel));
  //
  // authBloc.stream.listen((event) { event.});

  switch (state.status) {
    case AddBroadcastStatus.loading:
    default:
      return Text('Loaded');
  }
}
