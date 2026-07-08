import 'package:edu_app/auth/signin_page/signin_page.dart';
import 'package:edu_app/screens/main_screen/home_screens.dart';
import 'package:edu_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LoginWidgets extends StatefulWidget {
  const LoginWidgets({super.key});

  @override
  State<LoginWidgets> createState() => _LoginWidgetsState();
}

class _LoginWidgetsState extends State<LoginWidgets> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool rememberMe = false;

  void login() async{
    if (_formKey.currentState!.validate()) {
      // bool loginSucessful = await context.read<AuthProvider>().login(
      //   _emailController.text.trim(),
      //   _passwordController.text.trim(),
      // );
      // if( loginSucessful && context.mounted){
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => const HomeScreens(),
      //     ),
      //   );
      // }
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
      child: Form(
        key: _formKey,
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
                      MaterialPageRoute(
                        builder: (context) => const SigninPage(),
                      ),
                    );
                  },
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
            TextFormField(
              controller: _emailController,
              decoration: _roundedInputDecoration(
                context,
                hintText: "Enter your email",
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Email is required";
                }
                if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                  return "Please enter a valid email address";
                }
                return null;
              },
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
            TextFormField(
              controller: _passwordController,
              decoration: _roundedInputDecoration(
                context,
                hintText: "Enter your password",
              ),
              obscureText: true,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Password is required";
                }
                if (value.trim().length < 6) {
                  return "Password must be at least 6 characters";
                }
                return null;
              },
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
                onPressed: login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: AppColors.backgroundlight,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
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
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: theme.dividerColor, width: 1.2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: theme.dividerColor, width: 1.2),
      ),
    );
  }
}
