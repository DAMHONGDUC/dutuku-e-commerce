import 'package:system_design_v5/v5.dart';

class PreviewMediaArgs {
  final List<SdPreviewMediaConfigV5> items;

  PreviewMediaArgs({required this.items});

  Map<String, dynamic> toJson() {
    return {'items': items.map((e) => e.toJson()).toList()};
  }

  factory PreviewMediaArgs.fromJson(Map<String, dynamic> json) {
    return PreviewMediaArgs(
      items: (json['items'] as List)
          .map((e) => SdPreviewMediaConfigV5.fromJson(e))
          .toList(),
    );
  }
}
