import 'package:tuku_shop/src/features/product/data/models/description_model.dart';
import 'package:tuku_shop/src/features/product/domain/entities/description.dart';

class DescriptionModelToDescriptionEntityMapper {
  const DescriptionModelToDescriptionEntityMapper._();

  static Description toEntity(DescriptionModel model) {
    return Description(
      content: model.content ?? '',
      images: model.images ?? [],
    );
  }
}
