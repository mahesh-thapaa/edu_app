import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({
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
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ACCOUNT',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: theme.textTheme.bodySmall?.color,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: theme.dividerColor, width: 1.2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _AccountRow(
                icon: Icons.person_outline,
                title: 'Edit Profile',
                onTap: onEditProfileTap,
              ),
              const _AccountDivider(),
              _AccountRow(
                icon: Icons.lock_outline,
                title: 'Change Password',
                onTap: onChangePasswordTap,
              ),
              const _AccountDivider(),
              _AccountRow(
                icon: Icons.email_outlined,
                title: 'Email',
                onTap: onEmailTap,
              ),
              const _AccountDivider(),
              _AccountRow(
                icon: Icons.phone_outlined,
                title: 'Phone Number',
                onTap: onPhoneNumberTap,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _AccountRow extends StatelessWidget {
  const _AccountRow({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap ?? () {},
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: theme.primaryColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(icon, color: theme.primaryColor, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: theme.textTheme.bodyLarge?.color,
                ),
              ),
            ),
            Icon(Icons.chevron_right, color: theme.hintColor),
          ],
        ),
      ),
    );
  }
}

class _AccountDivider extends StatelessWidget {
  const _AccountDivider();

  @override
  Widget build(BuildContext context) {
    return Divider(color: Theme.of(context).dividerColor, height: 30);
  }
}
