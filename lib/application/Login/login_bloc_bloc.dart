import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../domain/login/login_model.dart';
part 'login_bloc_event.dart';
part 'login_bloc_state.dart';

class LoginPageBloc extends Bloc<LoginPageBlocEvent, LoginPageBlocState> {
  late LoginModel data;

  LoginPageBloc() : super(LoginPageBlocInitial()) {
    on<LoginPageBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
