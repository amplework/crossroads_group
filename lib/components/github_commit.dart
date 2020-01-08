import 'package:flutter/material.dart';
import 'package:crossroads_group/modals/commit_modals/github_commit.dart';

class GithubCommitItem extends StatelessWidget {
  GithubCommitItem({this.commit});
  final GithubCommit commit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
          child: Text(
            commit.commit.message,
            maxLines: 1,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text(
            'commit id: ' + commit.sha,
            style: TextStyle(
              fontSize: 11,
            ),
            textAlign: TextAlign.left,
            maxLines: 1,
          ),
        ),
        Container(
          height: 1,
          color: Color(0xffDCDCDC),
        ),
      ],
    );
  }
}
