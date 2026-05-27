import 'package:edu_app/models/seetings_models/user_email_models.dart';
import 'package:flutter/material.dart';

class EmailCard extends StatefulWidget {
  final UserEmailModel email;

  const EmailCard({super.key, required this.email});

  @override
  State<EmailCard> createState() => _EmailCardState();
}

class _EmailCardState extends State<EmailCard> {
  late TextEditingController currentEmailController;
  late TextEditingController newEmailController;

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  Color textColor(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.color ??
        Theme.of(context).colorScheme.onSurface;
  }

  Color borderColor(BuildContext context) {
    return Theme.of(context).dividerColor;
  }

  TextStyle titleStyle(BuildContext context) {
    return TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: textColor(context),
    );
  }

  InputDecoration buildDecoration({
    required BuildContext context,
    required String hint,
    required bool isPassword,
    required bool isVisible,
    VoidCallback? onTap,
  }) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: Theme.of(context).textTheme.bodyMedium?.color,
        fontSize: 14,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: borderColor(context), width: 1.4),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2),
      ),
      suffixIcon: isPassword
          ? IconButton(
              onPressed: onTap,
              icon: Icon(
                isVisible ? Icons.visibility : Icons.visibility_off,
                color: borderColor(context),
              ),
            )
          : null,
    );
  }

  @override
  void initState() {
    super.initState();

    currentEmailController = TextEditingController(
      text: widget.email.currentEmail,
    );

    newEmailController = TextEditingController(text: widget.email.newEmail);
  }

  @override
  void dispose() {
    currentEmailController.dispose();
    newEmailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  Widget buildTextField({
    required BuildContext context,
    required String title,
    required TextEditingController controller,
    required String hint,
    bool isPassword = false,
    bool isVisible = false,
    VoidCallback? onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: titleStyle(context)),

        const SizedBox(height: 10),

        TextFormField(
          controller: controller,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: textColor(context),
          ),
          obscureText: isPassword ? !isVisible : false,
          decoration: buildDecoration(
            context: context,
            hint: hint,
            isPassword: isPassword,
            isVisible: isVisible,
            onTap: onTap,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 18),
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor(context), width: 1.5),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTextField(
            context: context,
            title: "Current Email",
            hint: "Enter current email",
            controller: currentEmailController,
          ),

          const SizedBox(height: 18),

          buildTextField(
            context: context,
            title: "New Email",
            hint: "Enter new email",
            controller: newEmailController,
          ),

          const SizedBox(height: 18),

          buildTextField(
            context: context,
            title: "Password",
            hint: "Enter password",
            controller: passwordController,
            isPassword: true,
            isVisible: isPasswordVisible,
            onTap: () {
              setState(() {
                isPasswordVisible = !isPasswordVisible;
              });
            },
          ),

          const SizedBox(height: 18),

          buildTextField(
            context: context,
            title: "Confirm Password",
            hint: "Confirm password",
            controller: confirmPasswordController,
            isPassword: true,
            isVisible: isConfirmPasswordVisible,
            onTap: () {
              setState(() {
                isConfirmPasswordVisible = !isConfirmPasswordVisible;
              });
            },
          ),
        ],
      ),
    );
  }
}
