import 'package:crossroads_group/redux/app/app_state.dart';
import 'package:crossroads_group/containers/home/reducer.dart';

AppState appReducers(AppState state, dynamic action) => new AppState(
      homeState: homeReducer(state.homeState, action),
    );
