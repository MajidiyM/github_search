import 'package:bloc/bloc.dart';

import '../../repositories/models/models.dart';
import '../../repositories/repositrories.dart';
part 'repos_list_event.dart';
part 'repos_list_state.dart';

class ReposListBloc extends Bloc<ReposListEvent, ReposListState> {
  final GithubRepo reposFeed;
  ReposListBloc(this.reposFeed) : super(ReposListInitial()) {
    on<LoadReposList>((event, emit) async {
      try {
        emit(ReposListLoading());
        final reposList = await reposFeed.getRepos();
        emit(ReposListLoaded(reposList: reposList));
      } catch (e) {
        emit(ReposListLoadingFailure(exception: null));
      }
    });
  }
}
