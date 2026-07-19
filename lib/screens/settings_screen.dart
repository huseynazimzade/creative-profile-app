import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/menu_list_tile.dart';
import '../widgets/custom_bottom_nav.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader('PREFERENCES'),
            MenuListTile(
              icon: Icons.notifications_none,
              title: 'Push Notifications',
              trailing: Switch(
                value: true,
                onChanged: (val) {},
                activeColor: const Color(0xFF6C63FF),
              ),
            ),
            MenuListTile(
              icon: Icons.mail_outline,
              title: 'Email Notifications',
              trailing: Switch(
                value: true,
                onChanged: (val) {},
                activeColor: const Color(0xFF6C63FF),
              ),
            ),
            MenuListTile(
              icon: Icons.dark_mode_outlined,
              title: 'Dark Mode',
              trailing: Switch(
                value: false,
                onChanged: (val) {},
              ),
            ),
            MenuListTile(
              icon: Icons.language,
              title: 'Language',
              trailing: const Text('English >', style: TextStyle(color: Colors.black54)),
              onTap: () {},
            ),
            _buildSectionHeader('ACCOUNT'),
            MenuListTile(icon: Icons.lock_outline, title: 'Privacy', onTap: () {}),
            MenuListTile(icon: Icons.security, title: 'Security', onTap: () {}),
            MenuListTile(icon: Icons.block, title: 'Blocked Users', onTap: () {}),

            _buildSectionHeader('MORE'),
            MenuListTile(icon: Icons.help_outline, title: 'Help & Support', onTap: () {}),
            MenuListTile(icon: Icons.info_outline, title: 'About App', onTap: () {}),
            MenuListTile(
              icon: Icons.logout,
              title: 'Logout',
              iconColor: Colors.red,
              textColor: Colors.red,
              trailing: const SizedBox(),
              onTap: () {},
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(currentIndex: 4),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 20, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black45,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}
