class EpitechAPI {
  final String mail;
  final String autologin;
  final bool enableLogs;
  EpitechAPI({
    required this.mail,
    required this.autologin,
    this.enableLogs = false,
  });
  String get cleanAutologin {
    if (autologin.contains('intra.epitech.eu')) {
      return autologin
          .replaceAll('https://intra.epitech.eu/', '')
          .replaceAll('/', '')
          .trim();
    }
    return autologin;
  }
}
