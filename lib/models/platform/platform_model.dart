
import 'package:domain/domain.dart';

class PlatformModel {
  final String id;
  final String namePlatform;
  final String image;
  final bool favorite;
  final List<PlansModel> plans;

  PlatformModel({
    required this.id, 
    required this.namePlatform, 
    required this.image, 
    required this.favorite,
    required this.plans
  });

  PlatformModel copyWith ({
    String? id,
    String? namePlatform,
    String? image,
    bool? favorite,
    List<PlansModel>? plans,
  }){
    return PlatformModel(
      id: id ?? this.id, 
      namePlatform: namePlatform ?? this.namePlatform, 
      image: image ?? this.image, 
      favorite: favorite ?? this.favorite,
      plans: plans ?? this.plans
    );
  }
}

final List<String> namesPlatform = ['HBO MAX','PRIME VIDEO','DISNEY PLUS','YOUTUBE PREMIUM','SPOTIFY','NETFLIX'];

final dataPlatforms = List.generate(namesPlatform.length, (index) => PlatformModel(
  id: (index + 1).toString(), 
  namePlatform: namesPlatform[index], 
  image: '', 
  favorite: false,
  plans: dataPlans
  )
);