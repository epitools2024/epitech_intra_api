enum EndPoint {
  all,
  alert,
  message,
  marks,
  missedRdv,
  nextRdv,
  //flags,
}

extension EndPointExt on EndPoint {
  static const ept = {
    EndPoint.all: '/?format=json',
    EndPoint.alert: '/notification/alert?format=json',
    EndPoint.message: '/notification/message?format=json',
    EndPoint.marks: '/notes?format=json',
    EndPoint.missedRdv: '/notification/missed?format=json',
    EndPoint.nextRdv: '/notification/coming?format=json',
    //EndPoint.flags: '/flags?format=json',
  };

  String? get value => ept[this];
}
