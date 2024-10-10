// Praktikum 1
// void main() {
// String test = "test2";
// if (test == "test1") {
//     print("Test1");
// } else if (test == "test2") {
//     print("Test2");
// } else {
//     print("Something else");
// }
// if (test == "test2") print("Test2 again");
// }

// void main() {
//   String test = "true";
//   if (test == "true") {
//     print("Kebenaran");
//   } else {
//     print("Something else");
//   }
// }

// Praktikum 2
// void main() {
//   int counter = 1;
//   while (counter < 33) {
//     print(counter);
//     counter++;
//   }
// }

// void main() {
//   int counter = 1;
//   do {
//     print(counter);
//     counter++;
//   } while (counter < 77);
// }

//Praktikum 3
// void main() {
//   int index;
//   for (index = 10; index < 27; index++) {
//     print(index);
//   }
// }

void main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      break;
    } else if (index > 1 && index < 7) {
      continue;
    }
    print(index);
  }
}


// Tugas Praktikum
// void main() {
//   String namaLengkap = 'Dany Fatihul Ihsan';
//   String nim = '2241720251';

//   bool isPrima(int number) {
//     if (number < 2) return false;
//     for (int i = 2; i <= number ~/ 2; i++) {
//       if (number % i == 0) {
//         return false;
//       }
//     }
//     return true;
//   }

//   for (int i = 0; i <= 201; i++) {
//     if (isPrima(i)) {
//       print('$i adalah bilangan prima.');
//       print('Nama: $namaLengkap');
//       print('NIM: $nim');
//       print('--------------------');
//     }
//   }
// }