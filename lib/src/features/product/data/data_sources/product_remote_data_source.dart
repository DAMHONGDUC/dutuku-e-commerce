import 'package:tuku_shop/src/features/product/data/models/product_data_model.dart';
import 'package:tuku_shop/src/features/product/data/models/product_model.dart';
import 'package:tuku_shop/src/features/product/data/models/recommend_products_data_model.dart';
import 'package:tuku_shop/src/features/product/domain/domain.dart';

abstract class ProductRemoteDataSource {
  Future<RecommendProductsDataModel> getRecommendProducts({
    required GetRecommendProjectFilterParams params,
  });

  Future<ProductsDataModel> searchProducts({
    required SearchProductsFilterParams params,
  });

  Future<ProductModel> getProductDetail({required String productId});

  Future<List<ProductModel>> getRelatedProducts({
    required String productId,
    int? limit,
  });
}
