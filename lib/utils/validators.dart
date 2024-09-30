
class Validators {
  static String? notRequired(String? s, {String? errorMessage}) {
    return null;
  }

  static String? dynamicRequired(Object? s) {
    if (s == null) {
      return 'Harus diisi!';
    }
    return null;
  }

  static String? required(String? s, {String? errorMessage}) {
    if (s == null || s.isEmpty || s == "null") {
      return errorMessage ?? 'Harus diisi!';
    }
    return null;
  }

  
}
