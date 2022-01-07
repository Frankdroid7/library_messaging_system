import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libary_messaging_system/common/widgets/custom_text_field.dart';
import 'package:libary_messaging_system/screens/add_broadcast_screen/bloc/add_broadcast_bloc.dart';
import 'package:libary_messaging_system/screens/add_broadcast_screen/bloc/add_broadcast_event.dart';

class AddBroadcastScreen extends StatelessWidget {
  const AddBroadcastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextField(
                  maxLines: 5,
                  validator: (value) {},
                  hintText: 'Add Broadcast message',
                  errorText: 'Please add a broadcast message'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.read<AddBroadcastBloc>().add(
                  AddBroadcastEvent(
                      documentId: documentId,
                      broadcastMessage: broadcastMessage)),
              child: Text('SEND BROADCAST MESSAGE'),
            )
          ],
        ),
      ),
    );
  }
}
