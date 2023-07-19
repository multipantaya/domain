
import 'package:domain/domain.dart';

class ProductModel{
  final String id;
  final PlatformsModel platform;

  ProductModel({required this.id, required this.platform});

  ProductModel copyWith ({
    String? id,
    PlatformsModel? platform,
  }){
    return ProductModel(
      id: id ?? this.id,
      platform: platform ?? this.platform
    );
  }
}