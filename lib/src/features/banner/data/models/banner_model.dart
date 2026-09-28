import 'package:tuku_shop/src/core/core.dart';

class BannerModel {
  final int? id;
  final String? imageUrl;
  final String? tag;
  final BannerTagType? tagType;
  final String? title;
  final String? subtitle;
  final String? price;
  final String? contentColor;

  const BannerModel({
    this.id,
    this.imageUrl,
    this.tag,
    this.tagType,
    this.title,
    this.subtitle,
    this.price,
    this.contentColor,
  });
}
