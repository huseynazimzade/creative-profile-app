import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/custom_button.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  // Yazıları idarə etmək üçün Controller-lər əlavə etdik
  final TextEditingController _nameController = TextEditingController(text: 'FuadEliyevFlutterDeveloper2026\nSuperLongUsername');
  final TextEditingController _emailController = TextEditingController(text: 'fuad.eliyev.flutter.mobile.developer@gmail.com');
  final TextEditingController _phoneController = TextEditingController(text: '+994 50 123 45 67');
  final TextEditingController _bioController = TextEditingController(text: 'Passionate Flutter developer who loves building beautiful and functional apps.');

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('Edit Profile'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Save', style: TextStyle(color: Color(0xFF6C63FF), fontSize: 16)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Color(0xFFE5E4FF),
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: const Color(0xFF6C63FF),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const Icon(Icons.camera_alt, color: Colors.white, size: 16),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Artıq TextField istifadə edirik ki, istifadəçi yaza bilsin
              _buildEditableTextField(
                label: 'Full Name',
                controller: _nameController,
                icon: Icons.person_outline,
              ),
              _buildEditableTextField(
                label: 'Email',
                controller: _emailController,
                icon: Icons.mail_outline,
                keyboardType: TextInputType.emailAddress,
              ),
              _buildEditableTextField(
                label: 'Phone',
                controller: _phoneController,
                icon: Icons.phone_outlined,
                keyboardType: TextInputType.phone,
              ),
              _buildEditableTextField(
                label: 'Bio',
                controller: _bioController,
                maxLines: 3,
              ),

              const SizedBox(height: 40),
              CustomButton(
                text: 'Save Changes',
                onPressed: () {
                  // Burada gələcəkdə databazaya yadda saxlama kodu ola bilər
                  context.pop();
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Həqiqi TextField olan yeni metodumuz
  Widget _buildEditableTextField({
    required String label,
    required TextEditingController controller,
    IconData? icon,
    int maxLines = 1,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black45, fontSize: 14),
          prefixIcon: icon != null ? Icon(icon, color: Colors.black54, size: 20) : null,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        style: const TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
      ),
    );
  }
}
