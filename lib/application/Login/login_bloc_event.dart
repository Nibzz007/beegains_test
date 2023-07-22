part of 'login_bloc_bloc.dart';

@immutable
abstract class LoginPageBlocEvent {}

class SendData extends LoginPageBlocEvent {
  final String username;
  final String password;

  SendData(this.username, this.password);
}
