import 'package:data/data.dart';
import 'package:domain/domain.dart';

extension DataExtensions on DataException {
  DomainException fromError() => DomainException(error: error);
}
