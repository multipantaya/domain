
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class NotificationModel {
  final String id;
  final SimpleTextModel contentNotifcation;
  final IconData icon;
  final bool isRead;

  NotificationModel({
    required this.id,
    required this.contentNotifcation,
    required this.icon,
    required this.isRead
  });

  NotificationModel copyWith ({
    String? id,
    SimpleTextModel? contentNotifcation,
    IconData? icon,
    bool? isRead,
  }){
    return NotificationModel(
      id: id ?? this.id,
      contentNotifcation: contentNotifcation ?? this.contentNotifcation,
      icon: icon ?? this.icon,
      isRead: isRead ?? this.isRead
    );
  }
}