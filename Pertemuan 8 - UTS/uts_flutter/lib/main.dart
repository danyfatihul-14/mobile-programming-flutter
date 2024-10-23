import 'package:flutter/material.dart';
import 'pages/splashscreen.dart'; // Mengimpor splash screen
import 'pages/home_page.dart';
import 'pages/history_page.dart';
import 'pages/account_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Example',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreen(), // Memulai aplikasi dari SplashScreen
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(), // Home Page yang ada di folder pages/home_page.dart
    HistoryPage(), // History Page yang ada di folder pages/history_page.dart
    Center(child: Text('Pay Page')), // Placeholder untuk halaman Pay
    Center(child: Text('Inbox Page')), // Placeholder untuk halaman Inbox
    AccountPage(), // Account Page yang ada di folder pages/account_page.dart
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _pages, // Semua halaman ditumpuk, hanya yang aktif yang ditampilkan
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.black, // Warna latar belakang hitam
          selectedItemColor:
              const Color.fromARGB(255, 0, 0, 0), // Warna item yang dipilih
          unselectedItemColor: Colors.grey, // Warna item yang tidak dipilih
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
            BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Bayar'),
            BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Kotak Masuk'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
          ],
        ),
      ),
    );
  }
}
