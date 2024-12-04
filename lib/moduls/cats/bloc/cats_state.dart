part of 'cats_bloc.dart';

abstract class CatsState {}

final class CatsInitialState extends CatsState {}

final class CatsLoadingState extends CatsState {}

final class CatsSuccessState extends CatsState {
  final CatsEntity data;

  CatsSuccessState({required this.data});
}

final class CatsErrorState extends CatsState {
  final String error;

  CatsErrorState({required this.error});
}
