import 'package:dartz/dartz.dart';
import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/order/domain/domain.dart';

class GetOrderDetailUsecase implements UseCase<OrderEntity, String> {
  final OrderRepository repository;

  GetOrderDetailUsecase(this.repository);

  @override
  Future<Either<Failure, OrderEntity>> call(String orderId) async {
    return await repository.getOrderDetail(orderId: orderId);
  }
}
