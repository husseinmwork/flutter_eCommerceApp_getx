import 'package:get/get.dart';

validInput(String value, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(value)) {
      return "not valid username";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(value)) {
      return "not valid email";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(value)) {
      return "not valid phone";
    }
  }

  if (value.length < min) {
    return "can't be less than $min";
  }

  if (value.length > max) {
    return "can't be larger than $max";
  }

  if (value.isEmpty) {
    return "can't be Empty";
  }
}
