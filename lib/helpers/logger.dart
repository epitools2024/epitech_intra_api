enum EpitechErrorType {
  CONNECTION_TIMEOUT,
  BAD_AUTOLOGIN,
  BAD_REQUEST,
}

extension EpitechErrorTypeValue on EpitechErrorType {
  String? get asString {
    switch (this) {
      case EpitechErrorType.CONNECTION_TIMEOUT:
        return 'CONNECTION_TIMEOUT';
      case EpitechErrorType.BAD_AUTOLOGIN:
        return 'BAD_AUTOLOGIN';
      case EpitechErrorType.BAD_REQUEST:
        return 'BAD_REQUEST';
      default:
        return null;
    }
  }
}

class EpitechError implements Exception {
  EpitechError({this.error, this.message});

  EpitechErrorType? error;
  String? message;

  @override
  String toString() => 'EpitechError [${error!.asString}] : [$message]';
}
