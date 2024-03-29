import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBlocBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBlocBloc() : super(AuthBlocInitial()) {
    on<login_button_press>((event, emit) {
      final user_name = event.user_name;
      final password = event.password;

      if (user_name == "sinoj" && password == "12345") {
        emit(login_suceess(msg: "login suscess"));
      } else {
        emit(login_faild(errror_msg: "login failde"));
      }
    });
  }
}
