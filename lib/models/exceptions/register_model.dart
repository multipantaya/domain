enum StatusRegister { success, parentalControl, unknownAccess, unknown }

enum StatusErrorRegister {
  emailInUse,
  nicknameInUse,
  nicknameShort,
  registered,
  unknown
}

class RegisterModel {
  RegisterModel({
    this.status,
    this.userId,
  });

  String? userId;
  StatusRegister? status;
}
