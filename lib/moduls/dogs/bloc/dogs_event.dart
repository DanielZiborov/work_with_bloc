part of 'dogs_bloc.dart';

@immutable
sealed class DogsEvent {}

class GetDogsImageEvent extends DogsEvent {}
