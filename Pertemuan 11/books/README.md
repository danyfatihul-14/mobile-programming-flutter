# Dany Fatihul Ihsan
# TI3B
# 06

## 11 | Pemrograman Asynchronous
### Praktikum 1: Mengunduh Data dari Web Service (API)
#### Langkah 1 Buat Project Baru
```text
flutter pub add http
```

#### Langkah 2 Cek file pubspec.yaml
![alt text](image.png)

#### Langkah 3: Buka file main.dart
Ketiklah kode seperti berikut ini.
![alt text](assets/P1L3.png)

Soal 1
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
![alt text](assets/P1S1.png)

#### Langkah 4: Tambah method getData()
Tambahkan method ini ke dalam class _FuturePageState yang berguna untuk mengambil data dari API Google Books.
![alt text](assets/P1L4.png)

#### Soal 2
Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.
![alt text](assets/P1S21.png.png)
Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W11: Soal 2".
![alt text](assets/P1S2.png)

#### Langkah 5: Tambah kode di ElevatedButton
Tambahkan kode pada onPressed di ElevatedButton seperti berikut.
![alt text](assets/P1L5.png)

#### Soal 3
Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
Jawab: Ketika tombol ditekan, fungsi getData() dipanggil untuk mengambil data buku, dan hanya 450 karakter pertama dari body respon yang ditampilkan menggunakan substring. Jika permintaan berhasil, hasilnya ditampilkan; jika terjadi kesalahan, blok catchError menangani error tersebut dengan menampilkan pesan 'An Error Occurred'. setState digunakan untuk memperbarui tampilan setelah hasil permintaan diterima atau jika terjadi kesalahan, dan CircularProgressIndicator ditambahkan sebagai indikator pemrosesan.

Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 3".
![alt text](assets/P1S3.png)