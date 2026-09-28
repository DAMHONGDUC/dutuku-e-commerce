import 'package:tuku_shop/src/di/injector.dart';
import 'package:tuku_shop/src/features/category/data/data_sources/category_remote_data_source.dart';
import 'package:tuku_shop/src/features/category/data/data_sources/category_remote_data_source_impl.dart';
import 'package:tuku_shop/src/features/category/data/repositories/category_repository_impl.dart';
import 'package:tuku_shop/src/features/category/domain/domain.dart';
import 'package:tuku_shop/src/features/category/presentation/categories_section/categories_section_controller.dart';

class CategoryDi {
  static config() {
    getIt.registerLazySingleton<CategoryRemoteDataSource>(
      () => CategoryRemoteDataSourceImpl(),
    );

    getIt.registerLazySingleton<CategoryRepository>(
      () =>
          CategoryRepositoryImpl(dataSource: getIt<CategoryRemoteDataSource>()),
    );

    getIt.registerLazySingleton<GetCategoriesUsecase>(
      () => GetCategoriesUsecase(getIt<CategoryRepository>()),
    );

    getIt.registerFactory<CategoriesController>(
      () => CategoriesController(getIt<GetCategoriesUsecase>()),
    );
  }
}
