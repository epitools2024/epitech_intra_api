import 'package:epitech_intra_api/epitech_intra_api.dart';
import 'package:epitech_intra_api/helpers/endpoints.dart';
import 'package:epitech_intra_api/helpers/get_requests.dart';
import 'package:epitech_intra_api/helpers/logger.dart';
import 'package:test/test.dart';

void main() {
  final intra = EpitechAPI(
      mail: 'junior.medehou@epitech.eu',
      enableLogs: true,
      autologin:
          'https://intra.epitech.eu/auth-57a0d4528e3117b98cffc0e2a0c996ac4f14808c');
  group('Utilities', () {
    test('Test on cleanAutologin', () {
      expect(
        intra.cleanAutologin,
        'auth-57a0d4528e3117b98cffc0e2a0c996ac4f14808c',
      );
    });
  });

  group('Test on GetRequest extension on EpitechAPI', () {
    test('Test on all', () {
      expect(intra.get(EndPoint.all), isNot(EpitechErrorType.EMPTY_CALL.asMap));
    });
    test('Test on alert', () {
      expect(
          intra.get(EndPoint.alert), isNot(EpitechErrorType.EMPTY_CALL.asMap));
    });
    test('Test on message', () {
      expect(intra.get(EndPoint.message),
          isNot(EpitechErrorType.EMPTY_CALL.asMap));
    });
    test('Test on marks', () {
      expect(
          intra.get(EndPoint.marks), isNot(EpitechErrorType.EMPTY_CALL.asMap));
    });

    test('Test on missedRdv', () {
      expect(intra.get(EndPoint.missedRdv),
          isNot(EpitechErrorType.EMPTY_CALL.asMap));
    });

    test('Test on nextRdv', () {
      expect(intra.get(EndPoint.nextRdv),
          isNot(EpitechErrorType.EMPTY_CALL.asMap));
    });

    test('Test on flags', () {
      expect(
          intra.get(EndPoint.flags), isNot(EpitechErrorType.EMPTY_CALL.asMap));
    });
    test('Test on raw queries', () {
      expect(
          intra.getRaw(EndPoint.all), isNot(EpitechErrorType.EMPTY_CALL.asMap));
    });
    test('Test on Date queries', () {
      expect(
          intra.getRawDate(
              start: DateTime(2021, 01, 01), end: DateTime(2021, 20, 01)),
          isNot(EpitechErrorType.EMPTY_CALL.asMap));
    });
  });
}
