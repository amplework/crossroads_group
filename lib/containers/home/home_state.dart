import 'package:meta/meta.dart';
import 'package:crossroads_group/modals/commit_modals/github_commit.dart';

@immutable
class HomeState {
  final bool isFetching;
  final List<GithubCommit> commits;

  HomeState({@required this.isFetching, @required this.commits});

  factory HomeState.initial() {
    return new HomeState(commits: [], isFetching: false);
  }

  HomeState copyWith({final List<GithubCommit> commits, bool isFetching}) {
    return new HomeState(
        isFetching: isFetching ?? false, commits: commits ?? this.commits);
  }
}
