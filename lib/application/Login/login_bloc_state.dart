part of 'login_bloc_bloc.dart';

@immutable
abstract class LoginPageBlocState {}

class LoginPageBlocInitial extends LoginPageBlocState {}

class LoginPageLoading extends LoginPageBlocState {}

class LoginPageLoaded extends LoginPageBlocState {
  final LoginModel data;
  LoginPageLoaded(this.data);
}

class LoginPageError extends LoginPageBlocState {}
