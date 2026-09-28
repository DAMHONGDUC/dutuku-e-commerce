import 'package:tuku_shop/src/features/notification/domain/entities/notification_category_entity.dart';
import 'package:tuku_shop/src/features/notification/domain/entities/notification_entity.dart';

class NotificationData {
  final List<NotificationEntity> listNotification;
  final List<NotificationCategory> listNotificationCategory;

  NotificationData({
    required this.listNotification,
    required this.listNotificationCategory,
  });
}
