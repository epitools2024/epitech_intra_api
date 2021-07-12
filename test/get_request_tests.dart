import 'package:epitech_intra_api/epitech_intra_api.dart';
import 'package:epitech_intra_api/helpers/endpoints.dart';
import 'package:epitech_intra_api/helpers/get_requests.dart';
import 'package:epitech_intra_api/helpers/logger.dart';
import 'package:test/test.dart';

final EPITECH_MAIL = 'junior.medehou@epitech.eu';
final AUTOLOGIN_URL =
    'https://intra.epitech.eu/auth-57a0d4528e3117b98cffc0e2a0c996ac4f14808c/';
final AUTOLOGIN = 'auth-57a0d4528e3117b98cffc0e2a0c996ac4f14808c';

void main() async {
  final intra = EpitechAPI(
    mail: EPITECH_MAIL,
    enableLogs: true,
    autologin: AUTOLOGIN_URL,
  );

  group('Test on GetRequest extension on EpitechAPI', () {
    test('Test on all', () async {
      final res = intra.get(EndPoint.all);
      expect(res, isNot(EpitechErrorType.EMPTY_CALL));
    });
    test('Test on alert', () async {
      final res = await intra.get(EndPoint.alert);
      expect(res, isNot(EpitechErrorType.EMPTY_CALL));
    });
    test('Test on message', () {
      final res = intra.get(EndPoint.message);
      expect(res, isNot(EpitechErrorType.EMPTY_CALL));
    });
    test('Test on marks', () async {
      final res = intra.get(EndPoint.marks);
      expect(res, isNot(EpitechErrorType.EMPTY_CALL));
    });

    test('Test on missedRdv', () async {
      final res = await intra.get(EndPoint.missedRdv);
      expect(res, isNot(EpitechErrorType.EMPTY_CALL));
    });

    test('Test on nextRdv', () async {
      final res = await intra.get(EndPoint.nextRdv);
      expect(res, isNot(EpitechErrorType.EMPTY_CALL));
    });

    test('Test on raw queries', () async {
      final res = await intra.getRaw(EndPoint.all);
      expect(res, isNot(EpitechErrorType.EMPTY_CALL));
    });
    test('Test on Date queries', () async {
      final res = await intra.getRawDate(
          start: DateTime(2021, 01, 01), end: DateTime(2021, 01, 20));
      expect(res, isNot(EpitechErrorType.EMPTY_CALL));
    });
  });
}
