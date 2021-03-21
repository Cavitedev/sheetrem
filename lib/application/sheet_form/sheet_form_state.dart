part of 'sheet_form_bloc.dart';


@immutable
class SheetFormState {
  const SheetFormState({this.dateTime});

  final DateTime? dateTime;

  SheetFormState copyWith({
    DateTime? dateTime,
  }) {
    if (dateTime == null || identical(dateTime, this.dateTime)) {
      return this;
    }

    return SheetFormState(
      dateTime: dateTime,
    );
  }
}
