class AuthModel {
  int passcode;
  String email;
  String password;

  AuthModel({
    required this.passcode,
    required this.email,
    required this.password,
  });

  @override
  String toString() {
    return 'AuthModel => Code: $passcode, Email: $email Password: $password';
  }
}
