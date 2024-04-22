import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final biodata = <String, String>{};

  MyApp({super.key}){
    biodata['name'] = 'Virda Romadani';
    biodata['email'] = 'virdadani33@gmail.com';
    biodata['phone'] = '+62895328523113';
    biodata['image'] = 'Foto.jpg';
    biodata['kampus'] = 'STMIK Widya Utama';
    biodata['nim'] = 'STI202102493';
    biodata['jurusan'] = 'S1 Teknik Informatika';
    biodata['addr'] = 'Desa Toyareja, Kec. Purbalingga';
    biodata['desc'] = 'Nama saya Virda Romadani mahasiswa STMIK Widya Utama Jurusan S1 Teknik Informatika tahun 2021. Saya tinggal di desa Toyareja Kecamatan Purbalingga Kabupaten Purbalingga dan saya lahir di Purbalingga pada 9 November 2002';
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "UAS VIRDA ROMADANI",
      home: Scaffold(
        appBar: AppBar(title: const Text('UTS VIRDA ROMADANI')),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              teksKotak(Colors.black, biodata['name'] ?? ''),
                Image(image: AssetImage('assets/${biodata["image"] ?? ''}')),
                SizedBox(height: 10),
                Row(
                  children: [
                    btnContact(Icons.alternate_email, Colors.green[900]), 
                    btnContact(Icons.mark_email_unread_rounded, Colors.blueAccent), 
                    btnContact(Icons.phone, Colors.deepPurple)
                  ],
                ),
                SizedBox(height: 10),
                textAttribute("Nama", biodata['name'] ?? ''),
                textAttribute("NIM", biodata['nim'] ?? ''),
                textAttribute("Jurusan", biodata['jurusan'] ?? ''),
                textAttribute("Kampus", biodata['kampus'] ?? ''),
                textAttribute("Alamat", biodata['addr'] ?? ''),
                SizedBox(height: 10),
                teksKotak(Colors.black38, 'Deskripsi'),
                SizedBox(height: 10),
                Text(biodata['desc'] ?? '',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
                )
            ]
            ),
        ),
      ),
    );
  }

  Container teksKotak(Color bgColor, String teks) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(color: bgColor),
      child: Text(teks,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white),
      ),
    );
  }

  Row textAttribute(String judul, String teks) {
    return Row(
      children: [
        Container(
          width: 80,
          child: Text("$judul",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Text(":", style: TextStyle(fontSize: 18)),
        Text(teks, style: TextStyle(fontSize: 18))
      ]
    );
  }

  Expanded btnContact(IconData icon, var color){
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(icon),
        style: ElevatedButton.styleFrom(
        backgroundColor: color, 
        foregroundColor: Colors.white, 
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white)),
      ),
    );
  }
}