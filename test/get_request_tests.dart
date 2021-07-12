import 'package:epitech_intra_api/epitech_intra_api.dart';
import 'package:epitech_intra_api/helpers/endpoints.dart';
import 'package:epitech_intra_api/helpers/get_requests.dart';
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

  // With the Either used in the get method,
  // the Right refers to the non-error part
  // and the Left to the error one
  group('Test on GetRequest extension on EpitechAPI', () {
    test('Test on all', () async {
      final res = (await intra.get(EndPoint.all)).isRight();
      expect(res, true);
    });
    test('Test on alert', () async {
      final res = (await intra.get(EndPoint.alert)).isRight();
      expect(res, true);
    });
    test('Test on message', () async {
      final res = ((await intra.get(EndPoint.message)).isRight());
      expect(res, true);
    });
    test('Test on marks', () async {
      final res = (await intra.get(EndPoint.marks)).isRight();
      expect(res, true);
    });

    test('Test on missedRdv', () async {
      final res = (await intra.get(EndPoint.missedRdv)).isRight();
      expect(res, true);
    });

    test('Test on nextRdv', () async {
      final res = (await intra.get(EndPoint.nextRdv)).isRight();
      expect(res, true);
    });

    test('Test on raw queries', () async {
      final res = (await intra.getRaw(EndPoint.all)).isRight();
      expect(res, true);
    });

    test('Test on Date queries', () async {
      final res = (await intra.getRawDate(
              start: DateTime(2021, 01, 01), end: DateTime(2021, 01, 20)))
          .isRight();
      expect(res, true);
    });
  });
}
