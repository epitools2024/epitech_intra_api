enum endPoint {
  all,
  alert,
  message,
  marks,
  missed,
  nextRdv,
}

extension EndPointExt on endPoint {
  static const ept = {
    endPoint.all: '/?format=json',
    endPoint.alert: '/notification/alert?format=json',
    endPoint.message: '/notification/message?format=json',
    endPoint.marks: '/marks?format=json',
    endPoint.missed: '/notification/missed?format=json',
    endPoint.nextRdv: '/notification/coming?format=json',
  };

  String? get value => ept[this];
}
