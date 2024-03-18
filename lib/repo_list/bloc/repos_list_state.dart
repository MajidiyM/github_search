part of 'repos_list_bloc.dart';

class ReposListState {}

class ReposListInitial extends ReposListState {}

class ReposListLoading extends ReposListState {}

class ReposListLoaded extends ReposListState {
  ReposListLoaded({required this.reposList});
  final List<Repos> reposList;
}

class ReposListLoadingFailure extends ReposListState {
  ReposListLoadingFailure({required this.exception});
  final Object? exception;
}
