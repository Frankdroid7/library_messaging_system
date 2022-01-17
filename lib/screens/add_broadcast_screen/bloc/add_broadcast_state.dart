enum AddBroadcastStatus { unknown, loading, done }

class AddBroadCastState {
  final AddBroadcastStatus status;

  AddBroadCastState({required this.status});

  AddBroadCastState.done() : this(status: AddBroadcastStatus.done);
  AddBroadCastState.unknown() : this(status: AddBroadcastStatus.unknown);
  AddBroadCastState.loading() : this(status: AddBroadcastStatus.loading);
}
