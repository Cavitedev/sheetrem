import 'package:freezed_annotation/freezed_annotation.dart';

part 'sheet.freezed.dart';

@freezed
abstract class Sheet with _$Sheet {
  const factory Sheet({
    String? name,
    String? room,
    DateTime? lastBedChange,
  }) = _Sheet;

  factory Sheet.empty() => const Sheet();
}
