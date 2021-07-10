import 'package:epitech_intra_api/epitech_intra_api.dart';
import 'package:test/test.dart';

void main() {
  final intra = EpitechAPI(
      mail: 'junior.medehou@epitech.eu',
      autologin:
          'https://intra.epitech.eu/auth-57a0d4528e3117b98cffc0e2a0c996ac4f14808c');
  group('A group of tests', () {
    setUp(() {});

    test('First Test', () {
      //  expect(intra.isAwesome, isTrue);
    });
  });

  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      //  expect(intra.isAwesome, isTrue);
    });
  });
}
