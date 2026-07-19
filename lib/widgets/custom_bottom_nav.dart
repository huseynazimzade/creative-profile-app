import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;

  const CustomBottomNav({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF6C63FF),
      unselectedItemColor: Colors.black45,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(fontSize: 12),
      onTap: (index) {
        if (index == 4 && currentIndex != 4) {
          context.go('/profile');
        } else if (index == 3) {
          // Mesajlar sehifesi ucun routing əlavə edilə bilər
        }
      },
      items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
        BottomNavigationBarItem(
          icon: Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color(0xFF6C63FF),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.add, color: Colors.white),
          ),
          label: 'Add',
        ),
        const BottomNavigationBarItem(icon: Icon(Icons.mail_outline), label: 'Messages'),
        const BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
      ],
    );
  }
}
