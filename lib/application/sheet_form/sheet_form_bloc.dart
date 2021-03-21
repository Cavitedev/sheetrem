import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sheet_form_event.dart';
part 'sheet_form_state.dart';

class SheetFormBloc extends Bloc<SheetFormEvent, SheetFormState> {
  SheetFormBloc() : super(const SheetFormState());

  @override
  Stream<SheetFormState> mapEventToState(
    SheetFormEvent event,
  ) async* {
    if(event is SheetFormEventUpdateDate){
      yield state.copyWith(dateTime: event.newDateTime);



    }
  }
}
