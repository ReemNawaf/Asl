import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:asl/c_domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class IdUser with _$IdUser {
  const factory IdUser({
    required UniqueId id,
  }) = _User;
}
