part of 'auth_bloc_bloc.dart';

@immutable
sealed class AuthBlocEvent {}

final class login_button_press extends AuthBlocEvent {
  final String user_name;
  final String password;

  login_button_press({required this.user_name, required this.password});
}
