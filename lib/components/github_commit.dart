import 'package:flutter/material.dart';
import 'package:crossroads_group/modals/commit_modals/github_commit.dart';
import 'package:timeago/timeago.dart' as timeago;

class GithubCommitItem extends StatelessWidget {
  GithubCommitItem({this.githubCommit});
  final GithubCommit githubCommit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            githubCommit.commit.message,
            maxLines: 2,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'commit id: ' + githubCommit.sha,
            style: TextStyle(
              fontSize: 11,
            ),
            textAlign: TextAlign.left,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          userDetails(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 1,
              color: Color(0xffDCDCDC),
            ),
          ),
        ],
      ),
    );
  }

  Widget userDetails() {
    String commitDate = timeago.format(DateTime.parse(githubCommit.commit.user.date));
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: <Widget>[
          Text(
            githubCommit.commit.user.name,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
            Text(
              " commited " + commitDate,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.normal
              ),
            ),
        ],
      ),
    );
  }
}
