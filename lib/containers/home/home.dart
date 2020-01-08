import 'package:crossroads_group/modals/commit_modals/github_commit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:crossroads_group/redux/app/app_state.dart';
import 'package:crossroads_group/components/github_commit.dart';
import 'package:crossroads_group/containers/home/actions.dart';
import 'package:crossroads_group/containers/home/home_state.dart';


class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crossroads-Groups"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          StoreConnector<AppState, HomeState>(
              rebuildOnChange: true,
              onInit: (store) => store.dispatch(getCommits()),
              converter: (store) => store.state.homeState,
              builder: (_, data) {
                List<GithubCommit> items = data.commits;
                return Flexible(
                  child: ListView.builder(
                    itemCount: items.length + 2,
                    itemBuilder: (BuildContext context, int index) {
                      if(items.length <= 0 && data.isFetching == true) {
                        return Container(height: 150, child: Center(child: CircularProgressIndicator(),));
                      } else if(items.length <= 0){
                        return Center(
                          child: Text(
                            'No commit found',
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                        );
                      } else if( index > 0 && index <= items.length) {
                        GithubCommit item = items[index - 1];
                        return GithubCommitItem(
                          commit: item,
                        );
                      } else {
                        return SizedBox();
                      }
                    },
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}