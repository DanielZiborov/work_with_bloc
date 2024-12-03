part of 'dogs_bloc.dart';

@immutable
abstract class DogsState {}

final class DogsInitialState extends DogsState {}

final class DogsLoadingState extends DogsState {}

final class DogsSuccessState extends DogsState {
  final DogsEntity data;

  DogsSuccessState({required this.data});
}

final class DogsErrorState extends DogsState {
  final String errorText;

  DogsErrorState({required this.errorText});
}
