
import 'package:domain/domain.dart';

class PlatformsModel {
  final String id;
  final String namePlatform;
  final String image;
  final bool favorite;
  final int totalAmount;
  final List<PlansModel> plans;

  PlatformsModel({
    required this.id, 
    required this.namePlatform, 
    required this.image, 
    required this.favorite,
    required this.totalAmount,
    required this.plans
  });

  PlatformsModel copyWith ({
    String? id,
    String? namePlatform,
    String? image,
    bool? favorite,
    int? totalAmount,
    List<PlansModel>? plans,
  }){
    return PlatformsModel(
      id: id ?? this.id, 
      namePlatform: namePlatform ?? this.namePlatform, 
      image: image ?? this.image, 
      favorite: favorite ?? this.favorite,
      totalAmount: totalAmount ?? this.totalAmount,
      plans: plans ?? this.plans
    );
  }
}

final List<String> namesPlatform = ['HBO MAX','PRIME VIDEO','DISNEY PLUS','YOUTUBE PREMIUM','SPOTIFY','NETFLIX'];

final dataPlatforms = List.generate(namesPlatform.length, (index) => PlatformsModel(
  id: (index + 1).toString(), 
  namePlatform: namesPlatform[index], 
  image: '', 
  favorite: false,
  totalAmount: 1,
  plans: dataPlans
  )
);