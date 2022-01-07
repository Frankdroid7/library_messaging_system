
enum AddBroadcastStatus {loading, done}

class AddBroadCastState{
  final AddBroadcastStatus addBroadcastStatus;

  AddBroadCastState({required this.addBroadcastStatus});

  AddBroadCastState.done(): this(addBroadcastStatus: AddBroadcastStatus.done);
  AddBroadCastState.loading(): this(addBroadcastStatus: AddBroadcastStatus.loading);
}