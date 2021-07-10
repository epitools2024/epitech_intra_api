enum EndPoint {
  all,
  alert,
  message,
  marks,
  missed,
  nextRdv,
}

extension EndPointExt on EndPoint {
  static const ept = {
    EndPoint.all: '/?format=json',
    EndPoint.alert: '/notification/alert?format=json',
    EndPoint.message: '/notification/message?format=json',
    EndPoint.marks: '/marks?format=json',
    EndPoint.missed: '/notification/missed?format=json',
    EndPoint.nextRdv: '/notification/coming?format=json',
  };

  String? get value => ept[this];
}
