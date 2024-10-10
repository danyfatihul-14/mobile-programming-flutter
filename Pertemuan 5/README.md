```text
Nama    : Dany Fatihul Ihsan
Nim     : 2241720251
Kelas   : TI3B
```

# hello world

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Laporan Praktikum
### Praktikum 1 Membuat Project Flutter Baru
#### Langkah 1
```text
Membuat "Flutter: New Application Project" pada Visual Studio Code.
```

![alt text](images/P1L1.png)

#### Langkah 2
```text
Select a folder to create the project in.
```

![alt text](images/P1L2.png)

#### Langkah 3
```text
Memberikan nama pada project "hello_world". 
```

![alt text](images/P1L3.png)

#### Langkah 4
```text
Project flutter berhasil dibuat. 
```

![alt text](images/P1L4.png)

### Praktikum 3 Membuat Repository GitHub dan Laporan Praktikum
#### Langkah 1 - 10
```text
Saya lupa mengambil gambar langkah 1-10
```

#### Langkah 11
```text
Mencoba running project hellow_world.
```

![alt text](images/P3L11.png)

#### Langkah 12
```text
Saya lupa mengambil gambar langkah 1-10
```

### Praktikum 4 Menerapkan Widget Dasar
#### Langkah 1
```text
Membuat file baru untuk menampilkan text.
```
![alt text](images/02.png)

#### Langkah 2
```text
Membuat file baru untuk menampilkan gambar.
```
![alt text](images/03.png)

### Praktikum 5 Menerapkan Widget Material Design dan iOS Cupertino
#### Langkah 1
```text
Membuat widget dengan mengimport class dari material dan cupertino untuk menampilkan button dan loading bar.
```
![alt text](images/04.png)

#### Langkah 2
```text
Membuat class baru untuk menampilkan Floating Action Button.
```
![alt text](images/05.png)

#### Langkah 3-6
```text
Saya lanjut praktikum tidak satu persatu mengambil gambarnya
```

### Tugas Praktikum Soal No. 3
```text
Hasil akhir:
```

![alt text](images/TP3.png)

### Tugas Praktikum Soal No. 4
#### Langkah 3 Membuat Project
```text
Tambahkan Pubspec.yaml seperti ini:
```
```dart
environment:
  sdk: '>=2.19.4 <4.0.0'

dependencies:
  flutter:
    sdk: flutter

  english_words: ^4.0.0
  provider: ^6.0.0

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^2.0.0

flutter:
  uses-material-design: true
```

```text
Tambahkan code ini didalam analysis_options.yaml
```
```dart
include: package:flutter_lints/flutter.yaml

linter:
  rules:
    prefer_const_constructors: false
    prefer_final_fields: false
    use_key_in_widget_constructors: false
    prefer_const_literals_to_create_immutables: false
    prefer_const_constructors_in_immutables: false
    avoid_print: false
```

```text
bikin main_codelab.dart didalam lib lalu tambahkan code ini
```
```dart
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          Text('A random idea:'),
          Text(appState.current.asLowerCase),
        ],
      ),
    );
  }
}
```

#### Langkah 4 Menambahkan Tombol
```text
run hasil dari main_codelabe.dart
```

![alt text](images/TP4L41.png)

```text
Di bagian bawah lib/main.dart, tambahkan sesuatu pada string di objek Text pertama
```
![alt text](images/TP4L42.png)

```text
menambahkan button next
```
![alt text](images/TP4L43.png)

```text
jika kita klik button next akan menghasilkan acak
```
![alt text](images/TP4L44.png)

#### Langkah 5 Memperindah Tampilan Aplikasi
```text
lalu menambahkan bigcard
```
![alt text](images/TP4L51.png)

```text
menambahkan kartu
```
![alt text](images/TP4L52.png)

```text
mempercantik hasil dari klik next
```
![alt text](images/TP4L53.png)

```text
memberikan warna hasilnya
```
![alt text](images/TP4L54.png)

```text
memberikan text dan memperbesar text
```
![alt text](images/TP4L55.png)

```text
memberikan text menjadi center
```
![alt text](images/TP4L56.png)

```text
satu padding menjadi tengah tetapi masih dipinggir kiri
```
![alt text](images/TP4L57.png)

```text
satu padding menjadi center
```
![alt text](images/TP4L58.png)

```text
menghilangkan take Awesome dan membersakan hasilnya
```
![alt text](images/TP4L59.png)

#### Langkah 6 Menambahkan Fungsi
```text
dipindah ke sisi kiri
```
![alt text](images/TP4L61.png)

```text
kembali lagi button next ke center
```
![alt text](images/TP4L62.png)

```text
menambahkan button like dan beserta iconnya
```
![alt text](images/TP4L63.png)

#### Langkah 7 Menambahkan Kolom Samping Navigasi
```text
menambahkan Sidebar, lalu terdapat home dan like. Dan terdapat background warna kulit untuk isinya.
``` 
![alt text](images/TP4L71.png)

```text
bisa klik button like di sidebar atau sudah bisa pindah saat diklik
```
![alt text](images/TP4L72.png)

```text
saat klik icon yang didalam sidebar isinya akan berubah
```
![alt text](images/TP4L73.png)

```text
tampilan menjadi responsif 
```
![alt text](images/TP4L74.png)

#### Langkah 8 Menambahkan halama baru
```text
yang kita like akan tersimpan di sidebar like.
```
![alt text](images/TP4L81.png)