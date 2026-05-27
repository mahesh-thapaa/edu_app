import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
    this.onEditProfileTap,
    this.onChangePasswordTap,
    this.onEmailTap,
    this.onPhoneNumberTap,
  });

  final VoidCallback? onEditProfileTap;
  final VoidCallback? onChangePasswordTap;
  final VoidCallback? onEmailTap;
  final VoidCallback? onPhoneNumberTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, right: 18),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: Theme.of(context).dividerColor, width: 1.5),
      ),
      child: Material(
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _SettingsActionRow(
                icon: Icons.people,
                title: 'Edit Profile',
                onTap: onEditProfileTap,
              ),
              _SettingsDivider(color: Theme.of(context).dividerColor),
              _SettingsActionRow(
                icon: Icons.lock,
                title: 'Change password',
                onTap: onChangePasswordTap,
              ),
              _SettingsDivider(color: Theme.of(context).dividerColor),
              _SettingsActionRow(
                icon: Icons.email,
                title: 'Email',
                onTap: onEmailTap,
              ),
              _SettingsDivider(color: Theme.of(context).dividerColor),
              _SettingsActionRow(
                icon: Icons.phone,
                title: 'Phone Number',
                onTap: onPhoneNumberTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingsDivider extends StatelessWidget {
  const _SettingsDivider({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Divider(color: color, height: 1),
    );
  }
}

class _SettingsActionRow extends StatelessWidget {
  const _SettingsActionRow({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                icon,
                color: Theme.of(context).primaryColor,
                size: 28,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
              ),
            ),
            Icon(Icons.chevron_right, color: Theme.of(context).hintColor),
          ],
        ),
      ),
    );
  }
}
