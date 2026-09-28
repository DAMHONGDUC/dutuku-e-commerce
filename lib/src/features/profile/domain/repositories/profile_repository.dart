import 'package:dartz/dartz.dart';
import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/profile/domain/domain.dart';

abstract class ProfileRepository {
  Future<Either<Failure, List<SettingSectionEntity>>> getProfileSettings();
}
