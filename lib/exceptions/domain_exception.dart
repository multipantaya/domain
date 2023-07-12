class DomainException implements Exception {
  final String? message;
  final String? explanation;
  final dynamic error;
  final dynamic extra;

  const DomainException(
      {this.message, this.extra, this.error, this.explanation});

  @override
  String toString() => '${error.toString()}: $message';
}
