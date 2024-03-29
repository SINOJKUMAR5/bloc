part of 'auth_bloc_bloc.dart';

@immutable
sealed class AuthBlocState {}

final class AuthBlocInitial extends AuthBlocState {}

final class login_suceess extends AuthBlocState {
  final String msg;

  login_suceess({required this.msg});
}

final class login_faild extends AuthBlocState {
  final String errror_msg;

  login_faild({required this.errror_msg});
}
