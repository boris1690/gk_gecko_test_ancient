part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required Option<Either<HomeFailure, List>> data,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        isLoading: false,
        data: none(),
      );
}
