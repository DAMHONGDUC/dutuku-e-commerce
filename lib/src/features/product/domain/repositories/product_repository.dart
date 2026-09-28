import 'package:dartz/dartz.dart';
import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/product/domain/domain.dart';

abstract class ProductRepository {
  Future<Either<Failure, ProductsData>> searchProducts({
    required SearchProductsFilterParams params,
  });
  Future<Either<Failure, ProductEntity>> getProductDetail({
    required String productId,
  });
  Future<Either<Failure, List<ProductEntity>>> getRelatedProducts({
    required String productId,
    int? limit,
  });
  Future<Either<Failure, RecommendProductsData>> getRecommendProducts({
    required GetRecommendProjectFilterParams params,
  });
}
