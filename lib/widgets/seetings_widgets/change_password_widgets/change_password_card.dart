import 'package:flutter/material.dart';

class ChangePasswordCard extends StatefulWidget {
  const ChangePasswordCard({super.key});

  @override
  State<ChangePasswordCard> createState() => _ChangePasswordCardState();
}

class _ChangePasswordCardState extends State<ChangePasswordCard> {
  final currentController = TextEditingController();
  final newController = TextEditingController();
  final confirmController = TextEditingController();

  bool isCurrentObscured = true;
  bool isNewObscured = true;
  bool isConfirmObscured = true;

  @override
  void dispose() {
    currentController.dispose();
    newController.dispose();
    confirmController.dispose();
    super.dispose();
  }

  /// TITLE STYLE
  TextStyle titleStyle(BuildContext context) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.3,
      color: Theme.of(context).textTheme.bodyLarge?.color,
    );
  }

  /// INPUT DECORATION
  InputDecoration buildDecoration({
    required BuildContext context,
    required String hint,
    required bool isObscured,
    required VoidCallback onToggle,
  }) {
    return InputDecoration(
      hintText: hint,

      hintStyle: TextStyle(
        color: Theme.of(context).textTheme.bodyMedium?.color,
        fontSize: 14,
      ),

      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),

      suffixIcon: IconButton(
        onPressed: onToggle,
        icon: Icon(
          isObscured
              ? Icons.visibility_off_outlined
              : Icons.visibility_outlined,
          color: Theme.of(context).textTheme.bodyMedium?.color,
        ),
      ),

      border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(
          color: Theme.of(context).dividerColor,
          width: 1.4,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2),
      ),
    );
  }

  /// REUSABLE PASSWORD FIELD
  Widget buildPasswordField({
    required BuildContext context,
    required String title,
    required String hint,
    required TextEditingController controller,
    required bool isObscured,
    required VoidCallback onToggle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// TITLE
        Text(title, style: titleStyle(context)),

        const SizedBox(height: 10),

        /// TEXT FIELD
        TextFormField(
          controller: controller,
          obscureText: isObscured,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).textTheme.bodyLarge?.color,
          ),
          decoration: buildDecoration(
            context: context,
            hint: hint,
            isObscured: isObscured,
            onToggle: onToggle,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Theme.of(context).dividerColor, width: 1.5),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// CURRENT PASSWORD
          buildPasswordField(
            context: context,
            title: "Current Password",
            hint: "Enter current password",
            controller: currentController,
            isObscured: isCurrentObscured,
            onToggle: () {
              setState(() {
                isCurrentObscured = !isCurrentObscured;
              });
            },
          ),

          const SizedBox(height: 22),

          /// NEW PASSWORD
          buildPasswordField(
            context: context,
            title: "New Password",
            hint: "Enter new password",
            controller: newController,
            isObscured: isNewObscured,
            onToggle: () {
              setState(() {
                isNewObscured = !isNewObscured;
              });
            },
          ),

          const SizedBox(height: 22),

          /// CONFIRM PASSWORD
          buildPasswordField(
            context: context,
            title: "Confirm Password",
            hint: "Confirm password",
            controller: confirmController,
            isObscured: isConfirmObscured,
            onToggle: () {
              setState(() {
                isConfirmObscured = !isConfirmObscured;
              });
            },
          ),
        ],
      ),
    );
  }
}
