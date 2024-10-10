# Nama : Dany Fatihul Ihsan

# Kelas : TI3B / 06

## Praktikum 1 : Menerapkan Control Flows ("if/else")

### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
```dart
String test = "test2";
if (test == "test1") {
    print("Test1");
} else if (test == "test2") {
    print("Test2");
} else {
    print("Something else");
}
if (test == "test2") print("Test2 again");
```

### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
> Yang terjadi adalah akan menghasilkan output test2 dan test2 again dikarenakan yang diprint adalah test 2.

![alt text](image/image.png)

### Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

``` dart
String test = "true";
if (test) {
   print("Kebenaran");
}
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.

> yang terjadi adalah error
```dart
void main() {
  String test = "true";
  if (test == "true") {
    print("Kebenaran");
  } else {
    print("Something else");
  }
}
```
![alt text](image/image-1.png)

> akan menghasilkan output kebenaran dikarenakan terdapat if atau jika test sama dengan true maka akan menghasilkan output kebenaran
## Praktikum 2 : Menerapkan Perulangan "while" dan "do-while"

### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
``` dart
while (counter < 33) {
  print(counter);
  counter++;
}
```

### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

> ketika saya run terjadi error yaitu variabel counter belum di inisialisasi

```dart
void main() {
  int counter = 1;
  while (counter < 33) {
    print(counter);
    counter++;
  }
}
```
![alt text](image/image-2.png)

### Langkah 3
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.
``` dart
do {
  print(counter);
  counter++;
} while (counter < 77);
```
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan do-while.
> ketika saya run terjadi error yaitu variabel counter belum di inisialisasi
```dart
void main() {
  int counter = 1;
  do {
    print(counter);
    counter++;
  } while (counter < 77);
}
```

![alt text](image/image-3.png)
![alt text](image/image-4.png)

## Praktikum 3: Menerapkan Perulangan "for" dan "break-continue"

### Langkah 1
Ketik atau salin kode program berikut ke dalam fungsi main().
```dart
for (Index = 10; index < 27; index) {
  print(Index);
}
```

### Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
> ketika saya run terjadi error yaitu variabel index belum di inisialisasi. Lalu untuk index ada yang I nya besar atau kecil jadi terjadi error.

```dart
void main() {
  int index;
  for (index = 10; index < 27; index++) {
    print(index);
  }
}
```
![alt text](image/image-5.png)

### Langkah 3
Tambahkan kode program berikut di dalam for-loop, lalu coba eksekusi (Run) kode Anda.
```dart
If (Index == 21) break;
Else If (index > 1 || index < 7) continue;
print(index);
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan for dan break-continue.
```dart
void main() {
  int index;
  for (index = 1; index < 27; index++) {
    if (index == 21)
      break;
    else if (index > 1 || index < 7) continue;
  }
  print(index);
}
```
![alt text](image/image-6.png)

## Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!
> Jawaban Diatas

2. Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.
``` dart
void main() {
  String namaLengkap = 'Dany Fatihul Ihsan';
  String nim = '2241720251';

  bool isPrima(int number) {
    if (number < 2) return false;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print('$i adalah bilangan prima.');
      print('Nama: $namaLengkap');
      print('NIM: $nim');
      print('--------------------');
    }
  }
}
```

![alt text](image/TugasPraktikum.png)

3. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!