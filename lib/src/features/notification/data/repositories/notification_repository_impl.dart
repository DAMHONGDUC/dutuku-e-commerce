import 'package:dartz/dartz.dart';
import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/notification/data/data_sources/notification_remote_data_source.dart';
import 'package:tuku_shop/src/features/notification/data/mapper/notification_category_model_to_notification_category_mapper.dart';
import 'package:tuku_shop/src/features/notification/data/mapper/notification_model_to_notification_entity_mapper.dart';
import 'package:tuku_shop/src/features/notification/domain/domain.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  const NotificationRepositoryImpl({required this.dataSource});

  final NotificationRemoteDataSource dataSource;

  @override
  Future<Either<Failure, NotificationData>> getNotificationData() async {
    try {
      final notifications = await dataSource.getNotifications();
      final categories = await dataSource.getNotificationCategories();

      return Right(
        NotificationData(
          listNotification: notifications
              .map(NotificationModelToNotificationEntityMapper.toEntity)
              .toList(),
          listNotificationCategory: categories
              .map(
                NotificationCategoryModelToNotificationCategoryMapper.toEntity,
              )
              .toList(),
        ),
      );
    } on ServerException {
      return Left(ServerFailure());
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
