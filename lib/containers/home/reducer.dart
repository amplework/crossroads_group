import 'package:crossroads_group/containers/home/actions.dart';
import 'package:crossroads_group/containers/home/home_state.dart';

HomeState homeReducer(HomeState state, dynamic action) {
  if(action == HomeActions.StartLoading) {
    return new HomeState(
      isFetching: true,
      commits: [], //state.commits
    );
  } else if(action == HomeActions.StopLoading) {
    return new HomeState(
      isFetching: false,
      commits: state.commits
    );
  } else if(action is GetCommits) {
    return new HomeState(
      isFetching: false,
      commits: action.commits
    );
  }
  return state;
}