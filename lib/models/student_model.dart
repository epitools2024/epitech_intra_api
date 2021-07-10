import 'package:equatable/equatable.dart';

class Student extends Equatable {
  final String? gpa;
  final String? year;
  final String? credit;
  final String? mail;
  final String? cycle;
  final String? pictureUrl;
  final bool? isAdmin;

  Student({
    this.credit,
    this.gpa,
    this.mail,
    this.year,
    this.cycle,
    this.isAdmin,
    this.pictureUrl,
  });

  @override
  List<Object> get props => [gpa!, year!, mail!, year!];

  @override
  bool get stringify => true;
}
