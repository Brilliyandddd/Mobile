import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 244, 0, 0),
            title: Text("MyApp"),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Berita',
                ),
                Tab(
                  text: 'Pertandingan Hari ini',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                width: 200.0,
                height: 300.0,
                child: Column(
                  children: [
                    Image.network(
                      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.football-espana.net%2F2023%2F08%2F19%2Fjude-bellingham-real-madrid-almeria-win&psig=AOvVaw2ikTZ-ar68lgdqLoBavaSp&ust=1698309319363000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLCwwK_lkIIDFQAAAAAdAAAAABAS',
                      fit: BoxFit.cover, // Mengatur tampilan gambar
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'Jude "Gaada Obat" Bellingham', // Teks di bawah gambar
                        style: TextStyle(
                          fontSize: 16.0, // Ukuran teks
                          fontWeight: FontWeight.bold, // Ketebalan teks
                        ),
                      ),
                    ),
                    Container(
                      color: Color.fromARGB(255, 179, 0, 202),
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      margin: EdgeInsets.only(top: 5, bottom: 20),
                      child: Text(
                        'Transfer',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5, // Ganti dengan jumlah item yang sesuai
                        itemBuilder: (context, index) {
                          final itemImage =
                              'https://ichef.bbci.co.uk/news/640/cpsprodpb/356F/production/_128397631_gettyimages-1286178456.jpg';
                          final itemTitle =
                              'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat';
                          final itemDate = '20-08-2023';
                          return ListTile(
                            leading: Image.network(
                              itemImage,
                              // Atur lebar gambar sesuai keinginan
                              width: 150,
                              fit: BoxFit.cover, // Mengatur tampilan gambar
                            ),
                            title: Text(
                              itemTitle,
                              style: TextStyle(
                                fontSize:
                                    12.0, // Atur ukuran font sesuai keinginan
                              ),
                            ),
                            subtitle: Text(
                              itemDate,
                              style: TextStyle(
                                fontSize:
                                    12.0, // Atur ukuran font sesuai keinginan
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text('Konten Pertandingan Hari ini'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}