

import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class NotificationsModel {
  final String id;
  final String date;
  final List<NotificationModel> notifications;

  NotificationsModel({required this.id ,required this.date, required this.notifications});

  NotificationsModel copyWith ({
    String? id,
    String? date,
    List<NotificationModel>? notifications
  }){
    return NotificationsModel(
      id: id ?? this.id,
      date: date ?? this.date,
      notifications: notifications ?? this.notifications
    );
  }
}

final DateTime baseDAte = DateTime(2023,05,06);

final List<NotificationsModel> exampleNotifications = List.generate(5, (index) => NotificationsModel(
  id: index.toString(),
  date: '${baseDAte.add(Duration(days: index)).day} de mayo 2023',
  notifications: List.generate(5, (i) => NotificationModel(
      id: i.toString(),
      isRead: false,
      contentNotifcation: SimpleTextModel(
        title: i == 0 ? 'Alerta! cambio de precio' : i==1 ? 'Pre-orden enviada' : i==2 ? 'Pre-orden confirmada' : i==3 ? 'Pago confirmado' : 'Pago enviado',
        content: i == 0 ? 'La papa criolla a cambiado su precio promedio, ahora se esta vendiendo a 3.500 el kilo' : i==1 ? 'Hemos enviado correctamentes tus ordenes a los vendedores correspondientes, espera que te confirmen.' : i==2 ? 'El vendedor a confirmado su orden, ya puedes realizar el pago.' : i==3 ? 'Tu pago a sido confirmado y le hemos notificado a los vendedores, comenzaran a preparar tus productos.' : 'El vendedor a enviado tu pedido a la direccion indicada, ahora solo ienes que esperar por ellos'
      ),
      icon: i == 0 ? Icons.notifications_active_outlined : i==1 ? Icons.send : i==2 ? Icons.check_circle_outline : i==3 ? Icons.monetization_on_outlined : Icons.local_shipping_outlined
      ),
    )
  )
);



