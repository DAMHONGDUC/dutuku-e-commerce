import 'package:dartz/dartz.dart';
import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/notification/domain/domain.dart';

class GetNotificationsUsecase implements UseCase<NotificationData, NoParams> {
  final NotificationRepository repository;

  GetNotificationsUsecase(this.repository);

  @override
  Future<Either<Failure, NotificationData>> call(NoParams params) async {
    return await repository.getNotificationData();
  }
}
