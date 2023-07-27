part of 'enquiry_bloc.dart';

@immutable
abstract class EnquiryEvent {}

class InitialEvent extends EnquiryEvent{}

class LogoutEvent extends EnquiryEvent{
  
}
