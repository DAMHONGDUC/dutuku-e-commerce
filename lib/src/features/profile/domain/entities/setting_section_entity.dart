import 'package:tuku_shop/src/core/core.dart';
import 'package:tuku_shop/src/features/profile/domain/entities/setting_item_entity.dart';

class SettingSectionEntity {
  final String name;
  final SettingSectionType sectionType;
  final List<SettingItemEntity> items;

  SettingSectionEntity({
    required this.name,
    required this.items,
    required this.sectionType,
  });
}
