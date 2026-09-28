import 'package:dartz/dartz.dart';
import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/banner/domain/entities/banner_item.dart';

abstract class BannerRepository {
  Future<Either<Failure, List<BannerItem>>> getBanners();
}
