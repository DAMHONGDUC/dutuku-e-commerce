import 'package:dartz/dartz.dart';
import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/order/domain/domain.dart';

class GetMyOrderUsecase implements UseCase<OrdersData, GetMyOrderFilterParams> {
  final OrderRepository repository;

  GetMyOrderUsecase(this.repository);

  @override
  Future<Either<Failure, OrdersData>> call(
    GetMyOrderFilterParams params,
  ) async {
    return await repository.getMyOrder(params: params);
  }
}
