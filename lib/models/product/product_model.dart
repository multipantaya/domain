import 'package:hive/hive.dart';
import 'package:domain/domain.dart';

part 'product_model.g.dart';

@HiveType(typeId: 2)
class ProductModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final PlatformsModel platform;

  ProductModel({required this.id, required this.platform});

  ProductModel copyWith({
    String? id,
    PlatformsModel? platform,
  }) {
    return ProductModel(
      id: id ?? this.id,
      platform: platform ?? this.platform,
    );
  }
}
