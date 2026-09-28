import 'package:dartz/dartz.dart';
import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/notification/domain/entities/notification_data.dart';

abstract class NotificationRepository {
  Future<Either<Failure, NotificationData>> getNotificationData();
}
