import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../domain/home_failure.dart';
import '../domain/i_home_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._authRepository) : super(HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) async {
        await event.when(
          billboard: () => billboard(emit),
        );
      },
      transformer: droppable(),
    );
  }

  final IHomeRepository _authRepository;

  Future<void> billboard(Emitter<HomeState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      data: none(),
    ));

    final failureOrSuccess = await _authRepository.billboard();

    emit(state.copyWith(
      isLoading: false,
      data: optionOf(failureOrSuccess),
    ));
  }
}
