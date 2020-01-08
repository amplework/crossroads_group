import 'package:meta/meta.dart';

@immutable
class HomeState{

  final bool isFetching;
  final bool error;

  HomeState({
    @required this.isFetching,
    @required this.error,
  });

  factory HomeState.initial(){
    return new HomeState(
      isFetching: false,
      error: false
    );

  }

  HomeState copyWith({
    bool isFetching,
    bool error,
  }){
    return new HomeState(
        isFetching: isFetching ?? false,
        error: error ?? false,
    );
  }
}