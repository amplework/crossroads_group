import 'package:dio/dio.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:crossroads_group/modals/commit_modals/github_commit.dart';

ThunkAction getCommits() {
  return (Store store) async {
    try {
      store.dispatch(HomeActions.StartLoading);
      var dio = new Dio();

      Response response = await dio.get(
          "https://api.github.com/repos/amplework/crossroads_group/commits");

      List result = response.data;
      if (response.statusCode == 200 && result.length > 0) {
        print("result commitList: ${result}");
        List commitsFromServer = result;
        List<GithubCommit> formatedCommits = [];

        if (commitsFromServer != null && commitsFromServer.length > 0) {
          commitsFromServer.forEach((commit) {
            formatedCommits.add(GithubCommit.fromJson(commit));
          });
        }

        store.dispatch(new GetCommits(formatedCommits));
        store.dispatch(HomeActions.StopLoading);
      } else {
        store.dispatch(HomeActions.StopLoading);
      }
    } on DioError catch (e) {
      store.dispatch(HomeActions.StopLoading);
      print('error: $e');
    }
  };
}

enum HomeActions { StartLoading, StopLoading }

class GetCommits {
  List<GithubCommit> _commits;

  List<GithubCommit> get commits => this._commits;

  GetCommits(this._commits);
}
