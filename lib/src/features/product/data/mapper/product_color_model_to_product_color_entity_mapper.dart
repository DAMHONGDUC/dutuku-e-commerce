import 'package:tuku_shop/src/features/product/data/models/product_color_model.dart';
import 'package:tuku_shop/src/features/product/domain/entities/product_color.dart';

class ProductColorModelToProductColorEntityMapper {
  const ProductColorModelToProductColorEntityMapper._();

  static ProductColor toEntity(ProductColorModel model) {
    return ProductColor(
      colorName: model.colorName ?? '',
      imageUrl: model.imageUrl ?? '',
      colorCode: model.colorCode ?? '',
    );
  }
}
