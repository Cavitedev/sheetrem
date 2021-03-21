part of 'sheet_form_bloc.dart';

@immutable
abstract class SheetFormEvent {

  const SheetFormEvent();
}

@immutable
class SheetFormEventUpdateDate extends SheetFormEvent{


  const SheetFormEventUpdateDate({this.newDateTime});

  final DateTime? newDateTime;

}
