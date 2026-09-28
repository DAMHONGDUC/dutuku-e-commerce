import 'package:dartz/dartz.dart';
import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/product/domain/domain.dart';

class GetProductDetailUsecase implements UseCase<ProductEntity, String> {
  final ProductRepository repository;

  GetProductDetailUsecase(this.repository);

  @override
  Future<Either<Failure, ProductEntity>> call(String productId) async {
    return await repository.getProductDetail(productId: productId);
  }
}
