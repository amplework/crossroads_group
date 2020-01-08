import 'package:crossroads_group/modals/commit_modals/commit.dart';

class GithubCommit {
  String sha;
  String node_id;
  String html_url;
  String url;
  String comments_url;
  Commit commit;

  GithubCommit(
      {this.sha,
      this.node_id,
      this.url,
      this.comments_url,
      this.html_url,
      this.commit});

  factory GithubCommit.fromJson(Map<String, dynamic> data) {
    Commit commit = Commit.fromJson(data['commit']);
    return GithubCommit(
        sha: data['sha'],
        node_id: data['node_id'],
        url: data['url'],
        comments_url: data['comments_url'],
        html_url: data['html_url'],
        commit: commit);
  }
}
