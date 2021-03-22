
import 'package:sheetrem/domain/core/unique_id.dart';

class User {
  final UniqueID uid;

  User({
    required this.uid,
  });

  @override
  String toString() {
    return 'User{uid: $uid}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is User && runtimeType == other.runtimeType && uid == other.uid;

  @override
  int get hashCode => uid.hashCode;
}
