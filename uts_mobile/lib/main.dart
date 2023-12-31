import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'history.dart';

void main() {
  runApp(MaterialApp(
    home: MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    Container(),
    HistoryPage(), // Tambahkan HistoryPage ke daftar halaman
    // Tambahkan halaman lain jika diperlukan
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 60, left: 20),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 75,
                      height: 75,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 60),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(1, 1),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Transform.scale(
                            scale: 0.6,
                            child: Image.asset(
                              'assets/icons/coupon.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          margin: EdgeInsets.only(top: 60, right: 30),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(1, 1),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Transform.scale(
                            scale: 0.6,
                            child: Image.asset(
                              'assets/icons/heart.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: 350,
                height: 160,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.red[600]!, Colors.red[900]!],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Hai, BRILLIYAND NOVAL H.P.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 30,
                      child: Container(
                        width: 130,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Saldo Kamu',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Rp 100.000',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Image.asset(
                                  'assets/icons/arrow-right.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 55,
                      bottom: 30,
                      child: Container(
                        width: 130,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Saldo Bonus',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            SizedBox(height: 3),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    '0',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Image.asset(
                                  'assets/icons/arrow-right.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Positioned(
                child: Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10), // Menambahkan BorderRadius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/icons/kirim.png',
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(height: 5),
                          Text('Isi Saldo'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/icons/isisaldo.png', // Ganti dengan path gambar yang sesuai
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(height: 5),
                          Text('Kirim Uang'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/icons/discount.png', // Ganti dengan path gambar yang sesuai
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(height: 5),
                          Text('Kode Tiket'),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/icons/apps.png', // Ganti dengan path gambar yang sesuai
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(height: 5),
                          Text('Semua'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/icons/pulsa.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(height: 5),
                        Text('Pulsa'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/icons/pdam.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(height: 5),
                        Text('PDAM'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/icons/listrik.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(height: 5),
                        Text('Listrik'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/icons/games.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(height: 5),
                        Text('Games'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 1),
                    padding: EdgeInsets.all(5),
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/icons/tvkabel.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(height: 5),
                        Text('TV Kabel'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/icons/bpjs.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(height: 5),
                        Text('BPJS'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/icons/bpjs.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(height: 5),
                        Text('BPJS'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/icons/more.png',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(height: 5),
                        Text('More'),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                transform: Matrix4.translationValues(0.0, -60.0, 0.0),
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      initialPage: 0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                    ),
                    items: [
                      // Konten Carousel 1
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/carousel.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Konten Carousel 2
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/carousel.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Konten Carousel 3
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/carousel.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
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
              if (index == 1) {
                // Jika item "History" diklik (indeks 1)
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HistoryPage(),
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
                  width: 40, // Ukuran gambar yang dipilih
                  height: 40, // Ukuran gambar yang dipilih
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
                  width: 40, // Ukuran gambar yang dipilih
                  height: 40, // Ukuran gambar yang dipilih
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
                  width: 45, // Ukuran gambar yang dipilih
                  height: 45, // Ukuran gambar yang dipilih
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
                  width: 40, // Ukuran gambar yang dipilih
                  height: 40, // Ukuran gambar yang dipilih
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
                  width: 40, // Ukuran gambar yang dipilih
                  height: 40, // Ukuran gambar yang dipilih
                ),
                label: 'Profil',
              ),
            ],
            unselectedItemColor:
                Colors.grey, // Warna teks label untuk item yang tidak dipilih
            selectedItemColor: Colors.red,
          ),
        ),
      ),
    );
  }
}
