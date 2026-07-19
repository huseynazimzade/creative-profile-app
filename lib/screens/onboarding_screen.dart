import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () => context.go('/profile'),
                child: const Text('Skip', style: TextStyle(color: Color(0xFF6C63FF))),
              ),
            ),
            const Spacer(),
            // Şəklinizi assets-dən çağırın və ya placeholder istifadə edin
            Image.asset(
              'assets/images/onboarding.jpeg',
              height: MediaQuery.of(context).size.height * 0.35,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 40),
            const Text(
              'Manage your\nprofile easily',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                height: 1.2,
                color: Color(0xFF2C2C4E)
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'All your information in one place.\nKeep track and update anytime.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(true),
                _buildDot(false),
                _buildDot(false),
              ],
            ),
            const Spacer(),
            CustomButton(
              text: 'Continue',
              hasIcon: true,
              onPressed: () => context.go('/profile'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 10 : 8,
      height: isActive ? 10 : 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF6C63FF) : Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
    );
  }
}
