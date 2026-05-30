import 'package:edu_app/auth/signin_page/signin_page.dart';
import 'package:edu_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LoginWidgets extends StatefulWidget {
  const LoginWidgets({super.key});

  @override
  State<LoginWidgets> createState() => _LoginWidgetsState();
}

class _LoginWidgetsState extends State<LoginWidgets> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(right: 18),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.dividerColor, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: theme.textTheme.bodyLarge?.color,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 2,
            runSpacing: 2,
            children: [
              Text(
                "Dont have an Account?",
                style: TextStyle(
                  fontSize: 14,
                  color: theme.textTheme.bodyLarge?.color,
                ),
              ),
              const SizedBox(width: 5),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SigninPage()),
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 14,
                    color: theme.primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            "Email",
            style: TextStyle(
              fontSize: 14,
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: emailController,
            decoration: _roundedInputDecoration(
              context,
              hintText: "Enter your email",
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Password",
            style: TextStyle(
              fontSize: 14,
              color: theme.textTheme.bodyLarge?.color,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: passwordController,
            decoration: _roundedInputDecoration(
              context,
              hintText: "Enter your password",
            ),
            obscureText: true,
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Checkbox(
                value: rememberMe,
                onChanged: (v) => setState(() => rememberMe = v ?? false),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  'Remember me',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            height: 52,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Theme.of(context).primaryColor,
                ),
                foregroundColor: MaterialStateProperty.all(
                  AppColors.backgroundlight,
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: const Text(
                'Log In',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: theme.dividerColor.withValues(alpha: 0.6),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Or',
                  style: TextStyle(color: theme.textTheme.bodyMedium?.color),
                ),
              ),
              Expanded(
                child: Divider(
                  color: theme.dividerColor.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          SizedBox(
            width: double.infinity,
            height: 52,
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.g_mobiledata, size: 20),
              label: const Text(
                'Continue with Google',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: theme.dividerColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(999),
                ),
                foregroundColor: theme.textTheme.bodyLarge?.color,
                backgroundColor: theme.cardColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _roundedInputDecoration(
    BuildContext context, {
    required String hintText,
  }) {
    final theme = Theme.of(context);

    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 14,
        color: theme.textTheme.bodyLarge?.color?.withValues(alpha: 0.55),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      filled: true,
      fillColor: theme.cardColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: theme.dividerColor, width: 1.2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: theme.dividerColor, width: 1.2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: theme.primaryColor, width: 1.4),
      ),
    );
  }
}
