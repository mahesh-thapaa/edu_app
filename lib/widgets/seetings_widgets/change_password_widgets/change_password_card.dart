import 'package:flutter/material.dart';

class ChangePasswordCard extends StatefulWidget {
  const ChangePasswordCard({super.key});

  @override
  State<ChangePasswordCard> createState() => _ChangePasswordCardState();
}

class _ChangePasswordCardState extends State<ChangePasswordCard> {
  final TextEditingController currentController = TextEditingController();
  final TextEditingController newController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

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

  void toggleCurrent() {
    setState(() {
      isCurrentObscured = !isCurrentObscured;
    });
  }

  void toggleNew() {
    setState(() {
      isNewObscured = !isNewObscured;
    });
  }

  void toggleConfirm() {
    setState(() {
      isConfirmObscured = !isConfirmObscured;
    });
  }

  InputDecoration buildDecoration(
    BuildContext context,
    String hint,
    bool isObscured,
    VoidCallback toggle,
  ) {
    return InputDecoration(
      hintText: hint,

      suffixIcon: IconButton(
        onPressed: toggle,
        icon: Icon(
          isObscured ? Icons.visibility_off : Icons.visibility,
          color: Theme.of(
            context,
          ).textTheme.bodyLarge?.color?.withValues(alpha: 0.6),
        ),
      ),

      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Theme.of(context).dividerColor),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(right: 18),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: Theme.of(context).dividerColor, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// CURRENT PASSWORD
          Text(
            "Current Password",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: currentController,
            obscureText: isCurrentObscured,
            decoration: buildDecoration(
              context,
              "Enter current password",
              isCurrentObscured,
              toggleCurrent,
            ),
          ),

          const SizedBox(height: 15),

          /// NEW PASSWORD
          Text(
            "New Password",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: newController,
            obscureText: isNewObscured,
            decoration: buildDecoration(
              context,
              "Enter new password",
              isNewObscured,
              toggleNew,
            ),
          ),

          const SizedBox(height: 15),

          /// CONFIRM PASSWORD
          Text(
            "Confirm Password",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: confirmController,
            obscureText: isConfirmObscured,
            decoration: buildDecoration(
              context,
              "Confirm password",
              isConfirmObscured,
              toggleConfirm,
            ),
          ),
        ],
      ),
    );
  }
}
