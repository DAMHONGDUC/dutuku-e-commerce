import 'package:tuku_shop/src/di/injector.dart';
import 'package:tuku_shop/src/features/banner/data/data_sources/banner_remote_data_source.dart';
import 'package:tuku_shop/src/features/banner/data/repositories/banner_repository_impl.dart';
import 'package:tuku_shop/src/features/banner/domain/domain.dart';
import 'package:tuku_shop/src/features/banner/presentation/banner_carousel_section/banner_carousel_controller.dart';

class BannerDi {
  static config() {
    getIt.registerLazySingleton<BannerRemoteDataSource>(
      () => BannerRemoteDataSourceImpl(),
    );

    getIt.registerLazySingleton<BannerRepository>(
      () => BannerRepositoryImpl(dataSource: getIt<BannerRemoteDataSource>()),
    );

    getIt.registerLazySingleton<GetBannersUsecase>(
      () => GetBannersUsecase(getIt<BannerRepository>()),
    );

    getIt.registerFactory<BannerCarouselController>(
      () => BannerCarouselController(getIt<GetBannersUsecase>()),
    );
  }
}
