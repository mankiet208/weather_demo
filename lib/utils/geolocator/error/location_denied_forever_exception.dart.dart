class PermissionDeniedForeverException implements Exception {
  const PermissionDeniedForeverException(this.message);

  final String? message;

  @override
  String toString() {
    if (message == null || message == '') {
      return 'Location permissions are permanently denied, we cannot request permissions.';
    }
    return message!;
  }
}
