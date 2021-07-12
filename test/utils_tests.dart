import 'package:epitech_intra_api/epitech_intra_api.dart';
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

  group('Utilities', () {
    test('Test on cleanAutologin', () {
      expect(
        intra.cleanAutologin,
        AUTOLOGIN,
      );
      expect(
        AUTOLOGIN,
        AUTOLOGIN,
      );
    });
  });
}
