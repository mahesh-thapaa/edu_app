import 'package:edu_app/data/phone_nunmber_data.dart';
import 'package:edu_app/data/otp_data.dart';
import 'package:edu_app/widgets/seetings_widgets/change_phonenumber_widgets/otp_card.dart';
import 'package:edu_app/widgets/seetings_widgets/change_phonenumber_widgets/phone_number_buttons.dart';
import 'package:edu_app/widgets/seetings_widgets/change_phonenumber_widgets/phone_numbers_card.dart';
import 'package:flutter/material.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 75),
                  Text(
                    "Update Phone Number",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).textTheme.bodyLarge?.color,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              PhoneNumbersCard(phoneNumber: phoneNumberCard),
              const SizedBox(height: 20),
              OtpCard(otp: otpCard),
              const SizedBox(height: 40),
              PhoneNumberButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
