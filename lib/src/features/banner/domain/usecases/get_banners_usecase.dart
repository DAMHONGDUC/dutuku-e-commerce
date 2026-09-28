import 'package:dartz/dartz.dart';
import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/banner/domain/entities/banner_item.dart';
import 'package:tuku_shop/src/features/banner/domain/repositories/banner_repository.dart';

class GetBannersUsecase implements UseCase<List<BannerItem>, NoParams> {
  final BannerRepository repository;

  GetBannersUsecase(this.repository);

  @override
  Future<Either<Failure, List<BannerItem>>> call(NoParams params) async {
    return await repository.getBanners();
  }
}
