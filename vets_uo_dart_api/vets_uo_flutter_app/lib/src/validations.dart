class Validations {

  static bool validateIsNotPresent(String? value) {
    return (value == null || value.isEmpty);
  }

  static String? validateEmail(String? value) {
    if (validateIsNotPresent(value)) {
      return "Por favor, introduce un correo";
    }
    RegExp regexCorreo = RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]');
    if (!regexCorreo.hasMatch(value.toString())) {
      return "Por favor, introduce un formato de correo adecuado (tiene que haber un @ y un .)";
    }
    return null;
  }

  static String? validateName(String? value) {
    if (validateIsNotPresent(value)) {
      return "Por favor, introduce un nombre";
    }
    if (value.toString().length < 2) {
      return 'El nombre debe tener al menos 2 caracteres';
    }
    else if (value.toString().length > 20) {
      return 'El nombre no puede superar 20 caracteres';
    }
    return null;
  }

    static String? validateSurname(String? value) {
    if (validateIsNotPresent(value)) {
      return "Por favor, introduce apellidos";
    }
    RegExp regexEspacio = RegExp(r"[a-zA-Z]+ +[a-zA-Z]+");
    if (!regexEspacio.hasMatch(value.toString())) {
      return "Por favor, introduce dos apellidos";
    }
    return null;
  }

    static String? validatePhone(String? value) {
      if (validateIsNotPresent(value)) {
        return "Por favor, introduce un teléfono móvil";
      }
      RegExp regexCorreo = RegExp(r'^\d{3}-\d{3}-\d{3}-\d{3}$');
      if (!regexCorreo.hasMatch(value.toString())) {
        return "Por favor, introduce un formato de teléfono adecuado (cuatro sets de tres números separados con un -)";
      }
      return null;
  }
  
}
