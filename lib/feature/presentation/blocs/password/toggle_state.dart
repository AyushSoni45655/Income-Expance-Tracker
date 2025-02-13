part of 'toggle_bloc.dart';

@immutable
sealed class ToggleState {}

final class ToggleInitial extends ToggleState {}
final class TogglePasswordSttae extends ToggleState{
  final bool isObscure;
  TogglePasswordSttae({required this.isObscure});
}
