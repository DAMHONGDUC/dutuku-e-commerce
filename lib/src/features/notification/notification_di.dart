import 'package:tuku_shop/src/di/injector.dart';
import 'package:tuku_shop/src/features/notification/data/data_sources/notification_remote_data_source.dart';
import 'package:tuku_shop/src/features/notification/data/repositories/notification_repository_impl.dart';
import 'package:tuku_shop/src/features/notification/domain/domain.dart';
import 'package:tuku_shop/src/features/notification/presentation/notifications/notifications_controller.dart';

class NotificationDi {
  static config() {
    getIt.registerLazySingleton<NotificationRemoteDataSource>(
      () => NotificationRemoteDataSourceImpl(),
    );

    getIt.registerLazySingleton<NotificationRepository>(
      () => NotificationRepositoryImpl(
        dataSource: getIt<NotificationRemoteDataSource>(),
      ),
    );

    getIt.registerLazySingleton<GetNotificationsUsecase>(
      () => GetNotificationsUsecase(getIt<NotificationRepository>()),
    );

    getIt.registerFactory<NotificationsController>(
      () => NotificationsController(getIt<GetNotificationsUsecase>()),
    );
  }
}
