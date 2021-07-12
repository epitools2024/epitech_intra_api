import 'dart:convert';

import 'package:equatable/equatable.dart';

class Student extends Equatable {
  final double? gpa;
  final String? year;
  final int? credits;
  final String? autologin;
  final String? mail;
  final String? cycle;
  final String? pictureUrl;
  final bool? isAdmin;

  Student({
    this.autologin,
    this.credits,
    this.gpa,
    this.mail,
    this.year,
    this.cycle,
    this.isAdmin,
    this.pictureUrl,
  });

  factory Student.empty() {
    return Student(
      credits: 0,
      year: '',
      mail: '',
      pictureUrl: '',
      isAdmin: false,
      cycle: '',
      autologin: '',
      gpa: 0.00,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'credit': credits,
      'year': year,
      'mail': mail,
      'pictureUrl': '',
      'isAdmin': false,
      'cycle': '',
      'gpa': 0.00,
      'autologin': autologin,
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  List<Object> get props => [gpa!, year!, mail!, year!];

  @override
  bool get stringify => true;
}
