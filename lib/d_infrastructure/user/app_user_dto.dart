import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:asl/c_domain/app_user/user.dart';
import 'package:asl/c_domain/app_user/value_objects.dart';

part 'app_user_dto.freezed.dart';
part 'app_user_dto.g.dart';

@freezed
abstract class AppUserDto implements _$AppUserDto {
  const AppUserDto._();

  //  Create Data Transfer Object
  const factory AppUserDto({
    required String name,
    required String avatar,
  }) = _AppUserDto;

  //  converting Entity => DTO
  factory AppUserDto.fromDomain(AppUser appUser) {
    return AppUserDto(
      name: appUser.name.getOrCrash(),
      avatar: appUser.avater.getOrCrash(),
    );
  }

  //  converting DTO => Entity
  AppUser toDomain() {
    return AppUser(
      name: UserName(name),
      avater: UserAvater(avatar),
    );
  }

  //converting JSON => DTO
  factory AppUserDto.fromJson(Map<String, dynamic> json) =>
      _$AppUserDtoFromJson(json);

  //  converting Firestore => DTO, similar to JSON => DTO, with considering the id in the identifier
  factory AppUserDto.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    return AppUserDto.fromJson(doc.data()!);
  }
}
