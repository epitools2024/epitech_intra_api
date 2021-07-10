enum EpitechErrorType {
  CONNECTION_TIMEOUT,
  BAD_AUTOLOGIN,
  BAD_REQUEST,
  EMPTY_CALL,
}

extension EpitechErrorTypeValue on EpitechErrorType {
  String get asString {
    switch (this) {
      case EpitechErrorType.CONNECTION_TIMEOUT:
        return 'CONNECTION_TIMEOUT';
      case EpitechErrorType.BAD_AUTOLOGIN:
        return 'BAD_AUTOLOGIN';
      case EpitechErrorType.BAD_REQUEST:
        return 'BAD_REQUEST';
      case EpitechErrorType.EMPTY_CALL:
        return 'EMPTY_CALL';
    }
  }

  Map<String, dynamic> get asMap {
    switch (this) {
      case EpitechErrorType.CONNECTION_TIMEOUT:
        return {'CONNECTION_TIMEOUT': ''};
      case EpitechErrorType.BAD_AUTOLOGIN:
        return {'BAD_AUTOLOGIN': ''};
      case EpitechErrorType.BAD_REQUEST:
        return {'BAD_REQUEST': ''};
      case EpitechErrorType.EMPTY_CALL:
        return {'EMPTY_CALL': ''};
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
