import 'package:crossroads_group/containers/home/home_state.dart';
import 'package:meta/meta.dart';

@immutable
class AppState {

  final HomeState homeState;
  
  AppState({
    @required this.homeState,
  });

  factory AppState.initial(){
    return AppState(
      homeState: HomeState.initial(),
    );
  }

  AppState copyWith({
    HomeState homeState,
  }){
    return AppState(
      homeState: homeState ?? this.homeState,
    );
  }

}