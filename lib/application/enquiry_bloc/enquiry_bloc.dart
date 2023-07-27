import 'dart:async';
import 'package:beegains_task/domain/enquiry%20list/enquiry_list_model.dart';
import 'package:beegains_task/infrastructure/enquiry%20list/enquiry_list_implementation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'enquiry_event.dart';
part 'enquiry_state.dart';

class EnquiryBloc extends Bloc<EnquiryEvent, EnquiryState> {
  EnquiryBloc() : super(EnquiryInitial()) {
    on<EnquiryEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<InitialEvent>(intialEvent);
  }

  FutureOr<void> intialEvent(
    InitialEvent event, Emitter<EnquiryState> emit) async {
    emit(LoadingState());
    EnquiryListModel? data = await getEnquiryList();
    emit(SuccessState(data: data));
  }
}
