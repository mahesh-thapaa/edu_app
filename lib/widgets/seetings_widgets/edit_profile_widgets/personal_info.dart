import 'package:edu_app/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  late TextEditingController _nameController;
  late TextEditingController _dateOfJoinController;

  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    final userProvider = context.read<UserProvider>();
    _selectedDate = userProvider.joinedDate;
    _nameController = TextEditingController(text: userProvider.fullName);
    _dateOfJoinController = TextEditingController(
      text:
          "${_selectedDate.day.toString().padLeft(2, '0')}/"
          "${_selectedDate.month.toString().padLeft(2, '0')}/"
          "${_selectedDate.year}",
    );
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = context.watch<UserProvider>();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: Theme.of(context).dividerColor, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Full Name",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),

          const SizedBox(height: 5),

          TextField(
            controller: _nameController,
            onChanged: (value) {
              userProvider.updateName(value);
            },
            decoration: InputDecoration(
              hintText: "Enter your full name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Joined Date",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),

          const SizedBox(height: 5),

          TextField(
            controller: _dateOfJoinController,
            readOnly: true,
            onTap: () async {
              final picked = await showDatePicker(
                context: context,
                initialDate: _selectedDate,
                firstDate: DateTime(2024),
                lastDate: DateTime.now(),
              );

              if (picked != null) {
                setState(() {
                  _selectedDate = picked;

                  _dateOfJoinController.text =
                      "${picked.day.toString().padLeft(2, '0')}/"
                      "${picked.month.toString().padLeft(2, '0')}/"
                      "${picked.year}";
                });

                userProvider.updateJoinedDate(picked);
              }
            },
            decoration: InputDecoration(
              suffixIcon: const Icon(Icons.calendar_today_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _dateOfJoinController.dispose();
    super.dispose();
  }
}
