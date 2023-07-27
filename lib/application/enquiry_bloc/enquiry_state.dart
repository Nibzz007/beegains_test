part of 'enquiry_bloc.dart';

@immutable
abstract class EnquiryState {}

class EnquiryInitial extends EnquiryState {}

class ActionableState extends EnquiryState {}

class LoadingState extends EnquiryState {}

class ErrorState extends EnquiryState {}

class SuccessState extends EnquiryState {
  EnquiryListModel? data;

  SuccessState({required this.data});
}

class LogoutState extends ActionableState {}
