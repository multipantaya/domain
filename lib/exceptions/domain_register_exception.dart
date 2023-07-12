import 'package:domain/domain.dart';

class DomainRegisterException implements Exception {
  final StatusErrorRegister? error;
  final RegisterModel? registerModel;
  const DomainRegisterException({this.error, this.registerModel});
}
