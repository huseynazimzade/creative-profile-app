import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/menu_list_tile.dart';
import '../widgets/custom_bottom_nav.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xFFE5E4FF),
                    backgroundImage: AssetImage('assets/images/profile.png'), // Nümunə şəkil
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'FuadEliyevFlutterDeveloper2026\nSuperLongUsername',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'fuad.eliyev.flutter.mobile.developer@gmail.com',
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () => context.push('/edit_profile'),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F0FF),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Edit Profile', style: TextStyle(color: Color(0xFF6C63FF), fontSize: 12)),
                                SizedBox(width: 5),
                                Icon(Icons.edit, size: 14, color: Color(0xFF6C63FF)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatItem('24', 'Projects', Icons.group, Colors.purple),
                  _buildStatItem('128', 'Likes', Icons.favorite, Colors.purple),
                  _buildStatItem('7', 'Badges', Icons.star, Colors.orange),
                ],
              ),
            ),
            // ... Yuxarıdakı kodlar eyni qalır ...
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Menu', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            MenuListTile(icon: Icons.check_circle_outline, title: 'My Activity', onTap: () {}),
            MenuListTile(icon: Icons.bookmark_border, title: 'Saved Items', onTap: () {}),
            MenuListTile(icon: Icons.folder_open, title: 'My Projects', onTap: () {}),
            MenuListTile(icon: Icons.mail_outline, title: 'Messages', onTap: () {}),
            MenuListTile(icon: Icons.notifications_none, title: 'Notifications', onTap: () {}),
            MenuListTile(icon: Icons.lock_outline, title: 'Privacy & Security', onTap: () {}),
            MenuListTile(icon: Icons.help_outline, title: 'Help & Support', onTap: () {}),
            // About App artıq heç yerə getmir
            MenuListTile(icon: Icons.info_outline, title: 'About App', onTap: () {}),

            // YENİ: Ayarlar üçün xüsusi bölmə
            MenuListTile(
              icon: Icons.settings_outlined,
              title: 'Settings',
              onTap: () => context.push('/settings'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNav(currentIndex: 4),
    );
  }
  // ... Aşağıdakı kodlar eyni qalır ...

  Widget _buildStatItem(String count, String label, IconData icon, Color iconColor) {
    return Column(
      children: [
        Icon(icon, color: iconColor, size: 24),
        const SizedBox(height: 5),
        Text(count, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text(label, style: const TextStyle(color: Colors.black54, fontSize: 12)),
      ],
    );
  }
}
