class ChangePasswordModels {
  String currentPassword;
  String newPassword;
  String confirmPassword;
  bool showCurrentPassword;
  bool showNewPassword;
  bool showConfirmPassword;
  ChangePasswordModels({
    required this.currentPassword,
    required this.newPassword,
    required this.confirmPassword,
    this.showCurrentPassword = false,
    this.showNewPassword = false,
    this.showConfirmPassword = false,
  });
}
