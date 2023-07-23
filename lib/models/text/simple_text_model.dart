
import 'package:hive/hive.dart';
part 'simple_text_model.g.dart';

@HiveType(typeId: 5)
class SimpleTextModel {
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;

  SimpleTextModel({required this.title, required this.content});
}