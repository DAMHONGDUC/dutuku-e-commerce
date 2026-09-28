import 'package:dartz/dartz.dart';
import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/product/domain/domain.dart';

class SearchProductsUsecase
    implements UseCase<ProductsData, SearchProductsFilterParams> {
  final ProductRepository repository;

  SearchProductsUsecase(this.repository);

  @override
  Future<Either<Failure, ProductsData>> call(
    SearchProductsFilterParams params,
  ) async {
    return await repository.searchProducts(params: params);
  }
}
