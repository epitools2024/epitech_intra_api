class EpitechAPI {
  final String? autologin;
  final bool enableLogs;
  EpitechAPI({
    this.autologin,
    this.enableLogs = false,
  });
  //https://intra.epitech.eu/auth-57a0d4528e3117b98cffc0e2a0c996ac4f14808c
  String get cleanAutologin {
    if (autologin!.contains('intra.epitech.eu')) {
      return autologin!.replaceAll('https://intra.epitech.eu/', '');
    }
    return autologin!;
  }
}
