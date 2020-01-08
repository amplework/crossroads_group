import 'package:crossroads_group/modals/commit_modals/commit_user.dart';

class Commit {
  String message;
  CommitUser user;

  Commit({this.message, this.user});

  factory Commit.fromJson(Map<String, dynamic> data) {
    CommitUser user = CommitUser.fromJson(data['committer']);
    return Commit(message: data['message'], user: user);
  }
}
