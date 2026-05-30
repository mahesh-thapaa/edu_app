class LoginModels {
  final String email;
  final String password;
  final String fullName;
  final String dateJoinedDate;
  final String confirmPassword;
  LoginModels({
    required this.email,
    required this.password,
    required this.fullName,
    required this.dateJoinedDate,
    required this.confirmPassword,
  });
  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
        'fullName': fullName,
        'dateJoinedDate': dateJoinedDate,
        'confirmPassword': confirmPassword,
      };
}
