import 'package:epitech_intra_api/epitech_intra_api.dart';
import 'package:epitech_intra_api/helpers/endpoints.dart';
import 'package:epitech_intra_api/helpers/get_requests.dart';
import 'package:epitech_intra_api/helpers/logger.dart';
import 'package:test/test.dart';

void main() {
  final intra = EpitechAPI(
      mail: 'junior.medehou@epitech.eu',
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
    test('First Test', () {
      expect(intra.get(EndPoint.all), isNot(EpitechErrorType.EMPTY_CALL.asMap));
    });
  });
}
