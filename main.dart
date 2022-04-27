import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Clicker Counter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 243, 243, 243),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 164, 164, 164),
            ),
          ),
          title: Text(
            'Tambahkan Produk',
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 147, 47, 229))),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 20, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      'Informasi Produk',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: Color.fromARGB(255, 66, 66, 66))),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Color.fromARGB(150, 112, 112, 112),
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 5),
                child: Row(
                  children: [
                    Text(
                      'Foto Produk',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    )
                  ],
                ),
              ),
              // ignore: deprecated_member_use
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(223, 132, 132, 132), width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: FlatButton(
                    child: Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 129, 129, 129),
                    ),
                    onPressed: () {},
                    height: 150,
                    minWidth: 340,
                    color: Color.fromARGB(64, 255, 255, 255),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [Text('Nama Produk')],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22, left: 22, top: 5),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan nama produk disini',
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 15),
                        border: OutlineInputBorder(),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      'ID Produk',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22, left: 22, top: 5),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan ID Produk Anda Disini',
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 15),
                        border: OutlineInputBorder(),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      'Harga',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22, left: 22, top: 5),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan Harga Produk Anda Disini',
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 15),
                        border: OutlineInputBorder(),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      'Stok',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22, left: 22, top: 5),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan Jumlah Stok Produk Anda  Disini',
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 15),
                        border: OutlineInputBorder(),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Row(
                  children: [
                    Text(
                      'Deskripsi',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 22, left: 22, top: 5, bottom: 50),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan Deskripsi Produk Disini',
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 15),
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 5,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Peringatan Stok Menipis',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18,
                              color: Color.fromARGB(255, 66, 66, 66))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      'Ganti nilai ke 0 untuk menonaktifkan peringatan',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: Color.fromARGB(255, 66, 66, 66))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 22, left: 22, top: 10, bottom: 100),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan Nilai',
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 15),
                        border: OutlineInputBorder(),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Stack(
          clipBehavior: Clip.none,
          alignment: FractionalOffset(.5, 1.0),
          children: [
            Container(
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: FloatingActionButton.extended(
                onPressed: () {},
                backgroundColor: Color.fromARGB(255, 147, 47, 229),
                label: Text(
                  '           Tambahkan Produk           ',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255))),
                ),
              ),
            ),
          ],
        ));
  }
}
