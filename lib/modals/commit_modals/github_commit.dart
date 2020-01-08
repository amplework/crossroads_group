import 'package:crossroads_group/modals/commit_modals/commit.dart';

class GithubCommit {
  String sha;
  Commit commit;

  GithubCommit({this.sha, this.commit});

  factory GithubCommit.fromJson(Map<String, dynamic> data) {
    Commit commit = Commit.fromJson(data['commit']);

    return GithubCommit(sha: data['sha'], commit: commit);
  }
}
