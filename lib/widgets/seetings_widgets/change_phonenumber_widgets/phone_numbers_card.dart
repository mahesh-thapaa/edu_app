import 'package:flutter/material.dart';
import 'package:edu_app/models/seetings_models/phone_number_models.dart';

class PhoneNumbersCard extends StatefulWidget {
  final PhoneNumberModel phoneNumber;

  const PhoneNumbersCard({super.key, required this.phoneNumber});

  @override
  State<PhoneNumbersCard> createState() => _PhoneNumbersCardState();
}

class _PhoneNumbersCardState extends State<PhoneNumbersCard> {
  late TextEditingController currentPhoneController;
  late TextEditingController newPhoneController;

  Color textColor(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge?.color ??
        Theme.of(context).colorScheme.onSurface;
  }

  TextStyle titleStyle(BuildContext context) {
    return TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: textColor(context),
    );
  }

  InputDecoration buildDecoration(BuildContext context) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
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

  @override
  void initState() {
    super.initState();
    currentPhoneController = TextEditingController(
      text: widget.phoneNumber.currentPhoneNumber,
    );
    newPhoneController = TextEditingController(
      text: widget.phoneNumber.newPhoneNumber,
    );
  }

  @override
  void dispose() {
    currentPhoneController.dispose();
    newPhoneController.dispose();
    super.dispose();
  }

  Widget buildField({
    required BuildContext context,
    required String title,
    required TextEditingController controller,
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
          decoration: buildDecoration(context),
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
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildField(
            context: context,
            title: "Current Phone Number",
            controller: currentPhoneController,
          ),
          const SizedBox(height: 18),
          buildField(
            context: context,
            title: "New Phone Number",
            controller: newPhoneController,
          ),
        ],
      ),
    );
  }
}
