import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int selectedIndex = 1;
  int selectedTabIndex = 0; // Untuk melacak tab yang dipilih

  final List<Widget> pages = [
    Container(),
    HistoryPage(), // Tambahkan HistoryPage ke daftar halaman
    // Tambahkan halaman lain jika diperlukan
  ];

  double underlineWidth = 0.0; // Lebar awal garis merah

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Text(
          'Transaction History',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10), // Kembalikan preferredSize ke 80
          child: LayoutBuilder(
            builder: (context, constraints) {
              double columnWidth =
                  constraints.maxWidth / 2; // Dua kolom lebar yang sama
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTabIndex = 0;
                            underlineWidth =
                                columnWidth; // Atur lebar garis merah sesuai lebar kolom menu
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Pending',
                              style: TextStyle(
                                fontSize: 18,
                                color: selectedTabIndex == 0
                                    ? Colors.black
                                    : Colors.black,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              height: 3,
                              width: underlineWidth, // Atur lebar garis merah
                              color: selectedTabIndex == 0
                                  ? Colors.red
                                  : Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTabIndex = 1;
                            underlineWidth =
                                columnWidth; // Atur lebar garis merah sesuai lebar kolom menu
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Done',
                              style: TextStyle(
                                fontSize: 18,
                                color: selectedTabIndex == 1
                                    ? Colors.black
                                    : Colors.black,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              height: 3,
                              width: underlineWidth, // Atur lebar garis merah
                              color: selectedTabIndex == 1
                                  ? Colors.red
                                  : Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
      body: Container(
        color: Colors.grey.shade200,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/success.png', // Ganti dengan path gambar Anda
                  width: 250, // Sesuaikan dengan lebar gambar yang diinginkan
                  height: 250, // Sesuaikan dengan tinggi gambar yang diinginkan
                ),
                Text(
                  'All Transactions are Completed!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Any Pending transactions will appear on this page.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 10,
              blurRadius: 20,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
            if (index == 0) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    Container(), // Ganti dengan halaman beranda yang sesuai
              ));
            }
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home.png',
                width: 30,
                height: 30,
              ),
              activeIcon: Image.asset(
                'assets/icons/home.png',
                width: 40,
                height: 40,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/history.png',
                width: 30,
                height: 30,
              ),
              activeIcon: Image.asset(
                'assets/icons/history.png',
                width: 40,
                height: 40,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/scan.png',
                width: 35,
                height: 35,
              ),
              activeIcon: Image.asset(
                'assets/icons/scan.png',
                width: 45,
                height: 45,
              ),
              label: 'QRIS',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/email.png',
                width: 30,
                height: 30,
              ),
              activeIcon: Image.asset(
                'assets/icons/email.png',
                width: 40,
                height: 40,
              ),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/user.png',
                width: 30,
                height: 30,
              ),
              activeIcon: Image.asset(
                'assets/icons/user.png',
                width: 40,
                height: 40,
              ),
              label: 'Profil',
            ),
          ],
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
        ),
      ),
    );
  }
}
