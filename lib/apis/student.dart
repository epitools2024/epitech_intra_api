import 'package:epitech_intra_api/epitech_intra_api.dart';
import 'package:epitech_intra_api/models/student_model.dart';

extension EpitechStudent on EpitechAPI {
  Future<Student> getStudent() async {
    return Student();
  }
}
