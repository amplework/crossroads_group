import 'dart:async';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:crossroads_group/redux/app/app_reducers.dart';
import 'package:crossroads_group/redux/app/app_state.dart';

Future<Store<AppState>> createGlobalStore() async {
  return Store(
    appReducers,
    initialState: AppState.initial(),
    middleware: [
      thunkMiddleware
    ],
  );
}