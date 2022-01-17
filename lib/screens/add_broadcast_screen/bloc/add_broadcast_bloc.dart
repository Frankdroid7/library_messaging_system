import 'package:bloc/bloc.dart';
import 'package:libary_messaging_system/screens/add_broadcast_screen/bloc/add_broadcast_event.dart';
import 'package:libary_messaging_system/screens/add_broadcast_screen/bloc/add_broadcast_state.dart';
import 'package:libary_messaging_system/screens/add_broadcast_screen/repository/add_broadcast_repository.dart';

class AddBroadcastBloc extends Bloc<AddBroadcastEvent, AddBroadCastState> {
  AddBroadcastBloc({required AddBroadCastState initialState})
      : super(AddBroadCastState.unknown()) {
    on<AddBroadcastEvent>(_processAddBroadcastEvent);
  }
}

_processAddBroadcastEvent(
    AddBroadcastEvent event, Emitter<AddBroadCastState> emit) async {
  emit(AddBroadCastState.loading());
  await AddBroadcastRepository.sendBroadcast(
    documentId: event.documentId,
    broadcastMessage: event.broadcastMessage,
  );
  emit(AddBroadCastState.done());
}
