import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg-profile.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Overlay supaya background gak terlalu terang
          Container(
            color: Colors.white.withOpacity(0.5),
          ),

          // Konten utama
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Foto Profil
                    const ProfilePicture(),

                    const SizedBox(height: 10),

                    // Nama
                    const Text(
                      'Siti Tiaraysha Putri Azahra',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFE91E63), // Warna pink biar standout
                        shadows: [
                          Shadow(
                            color: Colors.black26,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 20),

                    // About
                    InfoCard(
                      title: "About",
                      content:
                          "Saya adalah seorang siswa yang fokus pada pengembangan web dengan pengetahuan dalam HTML, CSS, JavaScript, serta framework Laravel. Saya bersemangat belajar teknologi terbaru.",
                      color: const Color(0xFFFCE4EC), // Soft pink
                      textColor: Colors.black87,
                    ),

                    // Skills
                    InfoCard(
                      title: "Skills",
                      content:
                          "• HTML, CSS (Tailwind, Bootstrap), JavaScript, PHP (Laravel).\n• Aplikasi pendukung kerja tim: Github, Trello, Notion.",
                      color: const Color(0xFFF8BBD0), // Pink pastel
                      textColor: Colors.black87,
                    ),

                    // Contact
                    InfoCard(
                      title: "Contact",
                      content:
                          "• Email: tiarayshaputri18@gmail.com\n• Instagram: @tiarayshaa\n• Linkedin: @tiarayshaputriazahra",
                      color: const Color(0xFFFCE4EC),
                      textColor: Colors.black87,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Widget untuk Foto Profil
class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.pink.shade300, width: 4), // Tambahin border pink
        boxShadow: [
          BoxShadow(
            color: Colors.pink.shade100,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
        image: const DecorationImage(
          image: AssetImage("assets/images/tiara pink.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// Widget Reusable untuk Informasi Card
class InfoCard extends StatelessWidget {
  final String title;
  final String content;
  final Color color;
  final Color textColor;

  const InfoCard({
    super.key,
    required this.title,
    required this.content,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.pink.shade100,
              blurRadius: 6,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
