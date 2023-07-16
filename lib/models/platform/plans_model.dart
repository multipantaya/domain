
import 'package:domain/domain.dart';

class PlansModel {
  final String id;
  final String namePlan;
  final double price;
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

final List<String> planName = ['Basico','Familiar','Premiun','Ultra'];

final dataPlans = List.generate(planName.length, (index) => PlansModel(
  id: (index + 1).toString(), 
  namePlan: planName[index], 
  price: 10 + (1.5 * index), 
  description: [
    SimpleTextModel(
      title: 'Streaming en calidad Ultra HD (4K):', 
      content: 'Con el plan Premium, puedes disfrutar del contenido en la más alta calidad disponible en Netflix. Esto significa que podrás ver películas y series en resolución 4K en televisores compatibles, lo que ofrece una imagen más nítida, colores vibrantes y detalles impresionantes.'
    ),
    SimpleTextModel(
      title: 'Hasta cuatro pantallas simultáneas:', 
      content: 'Este plan te permite ver contenido en hasta cuatro dispositivos diferentes al mismo tiempo. Puedes compartir tu cuenta de Netflix con familiares o amigos y disfrutar de tus programas favoritos sin restricciones, incluso si cada persona desea ver algo diferente en diferentes dispositivos.'
    ),
    SimpleTextModel(
      title: 'Acceso al catálogo completo:', 
      content: 'El plan Premium te brinda acceso ilimitado a todo el catálogo de contenido de Netflix. Puedes explorar y ver todas las películas, series, documentales y programas originales disponibles en la plataforma sin limitaciones.'
    ),
  ]
  )
);