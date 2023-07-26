import 'package:hive/hive.dart';
import 'package:domain/domain.dart';

part 'platforms_model.g.dart';

@HiveType(typeId: 1)
class PlatformsModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String namePlatform;

  @HiveField(2)
  final String image;

  @HiveField(3)
  final bool favorite;

  @HiveField(4)
  final int totalAmount;

  @HiveField(5)
  final List<PlansModel> plans;

  PlatformsModel({
    required this.id, 
    required this.namePlatform, 
    required this.image, 
    required this.favorite,
    required this.totalAmount,
    required this.plans,
  });

  PlatformsModel copyWith({
    String? id,
    String? namePlatform,
    String? image,
    bool? favorite,
    int? totalAmount,
    List<PlansModel>? plans,
  }) {
    return PlatformsModel(
      id: id ?? this.id,
      namePlatform: namePlatform ?? this.namePlatform,
      image: image ?? this.image,
      favorite: favorite ?? this.favorite,
      totalAmount: totalAmount ?? this.totalAmount,
      plans: plans ?? this.plans,
    );
  }
}


final List<String> namesPlatform = [/*'HBO MAX','PRIME VIDEO','DISNEY PLUS',*/'NETFLIX','SPOTIFY','YOUTUBE PREMIUM'];

final dataPlatforms = List.generate(namesPlatform.length, (index) => PlatformsModel(
  id: (index + 10).toString(), 
  namePlatform: namesPlatform[index], 
  image: '', 
  favorite: false,
  totalAmount: 1,
  plans: index == 0 ? dataPlansNetflix : index == 1 ? dataPlansSpotify : dataPlansSpotify
  )
);