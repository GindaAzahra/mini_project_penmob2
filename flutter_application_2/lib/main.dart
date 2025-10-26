import 'package:flutter/material.dart';
import 'screens/profile_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const ProfileCardApp());
}

class ProfileCardApp extends StatefulWidget {
  const ProfileCardApp({super.key});

  @override
  State<ProfileCardApp> createState() => _ProfileCardAppState();
}

class _ProfileCardAppState extends State<ProfileCardApp> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card App 🩷',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile Card App 🩷'),
          actions: [
            PopupMenuButton<String>(
              onSelected: (value) {
                setState(() {
                  if (value == 'light') {
                    _themeMode = ThemeMode.light;
                  } else if (value == 'dark') {
                    _themeMode = ThemeMode.dark;
                  } else {
                    _themeMode = ThemeMode.system;
                  }
                });
              },
              itemBuilder: (context) => const [
                PopupMenuItem(value: 'light', child: Text('Mode Terang')),
                PopupMenuItem(value: 'dark', child: Text('Mode Gelap')),
                PopupMenuItem(value: 'system', child: Text('Ikuti Sistem')),
              ],
            ),
          ],
        ),
        body: const ProfilePage(),
      ),
    );
  }
}
