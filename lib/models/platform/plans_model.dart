
import 'package:domain/domain.dart';
import 'package:hive/hive.dart';
part 'plans_model.g.dart';

@HiveType(typeId: 4)
class PlansModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String namePlan;
  @HiveField(2)
  final double price;
  @HiveField(3)
  final List<SimpleTextModel> description;

  PlansModel({
    required this.id, 
    required this.namePlan, 
    required this.price, 
    required this.description
  });

  PlansModel copyWith({
    String? id,
    String? namePlan,
    double? price,
    List<SimpleTextModel>? description,
  }){
    return PlansModel(
      id: id ?? this.id, 
      namePlan: namePlan ?? this.namePlan, 
      price: price ?? this.price, 
      description: description ?? this.description
    );
  }
}