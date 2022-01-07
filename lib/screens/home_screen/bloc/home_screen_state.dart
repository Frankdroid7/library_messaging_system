import 'package:equatable/equatable.dart';

enum HomeScreenStatus { error, loading, loaded }

class HomeScreenState extends Equatable {
  final String? error;
  final List<String>? departments;
  final HomeScreenStatus homeScreenStatus;
  const HomeScreenState(
      {this.error, this.departments, required this.homeScreenStatus});

  @override
  List<Object?> get props => [error, homeScreenStatus];

  const HomeScreenState.error(String error)
      : this(error: error, homeScreenStatus: HomeScreenStatus.error);
  const HomeScreenState.loaded(List<String> allDepartments)
      : this(
            departments: allDepartments,
            homeScreenStatus: HomeScreenStatus.loaded);
  const HomeScreenState.loading()
      : this(homeScreenStatus: HomeScreenStatus.loading);
}
