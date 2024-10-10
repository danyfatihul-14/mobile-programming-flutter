// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

// void main() {
//   var list = [1, 2, 3, 4, 5];
//   assert(list.length == 5);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

// void main() {
//   final List<String?> list = List.filled(5, null); // Membuat list dengan panjang 5 dan default value null

//   list[0] = "Dany Fatihul Ihsan"; // Masukkan nama pada indeks ke-1 (indeks 0)
//   list[1] = "2241720251";  // Masukkan NIM pada indeks ke-2 (indeks 1)

//   print(list); // Print seluruh list
// }

// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);
// }

// void main() {
//   var names1 = <String>{};
//   Set<String> names2 = {}; // This works, too.
//   var names3 = {}; // Creates a map, not a set.

//   print(names1);
//   print(names2);
//   print(names3);
// }

// void main() {
//   var names1 = <String>{};
//   Set<String> names2 = {};

//   names1.add("Dany Fatihul Ihsan");
//   names1.add("2241720251");

//   names2.addAll({"Dany Fatihul Ihsan", "2241720251"});

//   // Mencetak hasil
//   print(names1);
//   print(names2);
// }

// void main() {
//   var gifts = {
//     // Key:    Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 1
//   };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 2,
//   };

//   print(gifts);
//   print(nobleGases);
// }

// void main() {
//   var gifts = {
//     // Key:    Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 1
//   };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 2,
//   };

//   print(gifts);
//   print(nobleGases);

//   var mhs1 = Map<String, String>();
//   gifts['first'] = 'partridge';
//   gifts['second'] = 'turtledoves';
//   gifts['fifth'] = 'golden rings';

//   var mhs2 = Map<int, String>();
//   nobleGases[2] = 'helium';
//   nobleGases[10] = 'neon';
//   nobleGases[18] = 'argon';

//   print(gifts);
//   print(nobleGases);
// }

// void main() {
//   var gifts = {
//     // Key:    Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 'golden rings',
//     'name': 'Dany Fatihul Ihsan',
//     'NIM': '2241720251'
//   };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 'argon',
//     20: 'Dany Fatihul Ihsan',
//     30: '2241720251'
//   };

//   print(gifts);
//   print(nobleGases);

//   var mhs1 = Map<String, String>();
//   mhs1['name'] = 'Dany Fatihul Ihsan';
//   mhs1['NIM'] = '2241720251';

//   var mhs2 = Map<int, String>();
//   mhs2[20] = 'Dany Fatihul Ihsan';
//   mhs2[30] = '2241720251';

//   print(mhs1);
//   print(mhs2);
// }

// void main() {
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];
//   print(list);
//   print(list2);
//   print(list2.length);
//   var list1 = [1, 2, null];
//   print(list1);
//   var list3 = [0, ...?list1];
//   print(list3.length);
// }

// void main() {
//   var list = [1, 2, 3];
//   var list2 = [0, ...list];
//   print(list); // Output: [1, 2, 3]
//   print(list2); // Output: [0, 1, 2, 3]
//   print(list2.length); // Output: 4

//   var list1 = [1, 2, null];
//   print(list1); // Output: [1, 2, null]
//   var list3 = [0, ...?list1];
//   print(list3.length); // Output: 4

//   var nimList = [2, 2, 4, 1, 7, 2, 0, 2, 5, 1];
//   var combinedList = [...nimList, ...list3];
//   print(combinedList);
//   print(combinedList.length);
//   bool promoActive = true; // Deklarasikan promoActive sebagai boolean
//   var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
//   print(nav);
//   var login = 'Manager'; // Deklarasikan variabel login
//   var nav2 = [
//     'Home',
//     'Furniture',
//     'Plants',
//     if (login == 'Manager') 'Inventory'
//   ];
//   print(nav2);
//   var listOfInts = [1, 2, 3];
//   var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
//   assert(listOfStrings[1] == '#1');
//   print(listOfStrings);
// }

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  (String, int) mahasiswa = ('Dany Fatihul Ihsan', 2241720251);
  print(mahasiswa);

  var record = (2, 5);
  print(record);

  var result = tukar(record);
  print(result);

  var mahasiswa2 = ('first: Dany Fatihul Ihsan', a: 2241720251, b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}
