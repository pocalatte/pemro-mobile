void main() {
  // Praktikum 1

  // Langkah 1

  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);
  //
  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // Langkah 3

  // final List<String?> list = List.filled(5, null);
  // list[1] = "Ellois Karina Handoyo";
  // list[2] = "2241720154";
  //
  // assert(list.length == 5);
  // assert(list[1] == "Ellois Karina Handoyo");
  // assert(list[2] == "2241720154");
  //
  // print(list.length);
  // print(list[1]);
  // print(list[2]);

//   Praktikum 2

  // Langkah 1

  // var halogens = ['fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'];
  // print(halogens.join(', '));

//   Langkah 3

  // var names1 = <String>{};
  // Set<String> names2 = {};
  // var names3 = {};
  //
  // print(names1);
  // print(names2);
  // print(names3);

  // var names1 = <String>{};
  // Set<String> names2 = {};
  //
  // names1.add("Ellois Karina Handoyo");
  // names1.add("2241720154");
  // names2.addAll({"Ellois Karina Handoyo", "2241720154"});
  //
  // print(names1);
  // print(names2);

//   Praktikum 3

// Langkah 1

  // var gifts = {
  //   // Key:    Value
  //   'first': 'partridge',
  //   'second': 'turtledoves',
  //   'fifth': 1
  // };
  //
  // var nobleGases = {
  //   2: 'helium',
  //   10: 'neon',
  //   18: 2,
  // };
  //
  // print(gifts);
  // print(nobleGases);

//   Langkah 3

  // var gifts = Map<String, String>();
  // var nobleGases = Map<int, String>();
  // gifts['first'] = 'partridge';
  // gifts['second'] = 'turtledoves';
  // gifts['fifth'] = 'golden rings';
  // nobleGases[2] = 'helium';
  // nobleGases[10] = 'neon';
  // nobleGases[18] = 'argon';
  //
  // var mhs1 = Map<String, String>();
  // mhs1['nama'] = 'Ellois Karina Handoyo';
  // mhs1['nim'] = '2241720154';
  //
  // var mhs2 = Map<int, String>();
  // mhs2[1] = 'Ellois Karina Handoyo';
  // mhs2[2] = '2241720154';
  //
  // print(gifts);
  // print(nobleGases);
  // print(mhs1);
  // print(mhs2);

//   Praktikum 4

// Langkah 1

  // var list = [1, 2, 3];
  // var list2 = [0, ...list];
  // print(list);
  // print(list2);
  // print(list2.length);

//   Langkah 3

  // var list1 = [1, 2, null, '2241720189'];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3.length);

// Langkah 4

  // bool promoActive = false;
  //
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

//   Langkah 5

  // var login = 'Manager';
  //
  // var nav2 = [
  //   'Home',
  //   'Furniture',
  //   'Plants',
  //   if (login == 'Manager') 'Inventory'
  // ];
  // print(nav2);

//   Langkah 6

  // var listOfInts = [1, 2, 3];
  // var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  // assert(listOfStrings[1] == '#1');
  // print(listOfStrings);

//   Praktikum 5

//   Langkah 1

  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // var record = {'first': 'first', 'a': 2, 'b': true, 'last': 'last'};
  // print('before move: $record');
  //
  // var result = move(record);
  // print('after move: $result');

//   Langkah 4

  // (String, int) mahasiswa = ('Ellois Karina Handoyo', 2241720154);
  // print(mahasiswa);

//   Langkah 5

  // var mahasiswa2 = ('first', a: 2, b: true, 'last');
  //
  // print(mahasiswa2.$1); // Prints 'first'
  // print(mahasiswa2.a); // Prints 2
  // print(mahasiswa2.b); // Prints true
  // print(mahasiswa2.$2); // Prints 'last'

  // var mahasiswa2 = ('first', 'Ellois Karina Handoyo', '2241720154', b: true, 'last');
  //
  // print(mahasiswa2.$1);
  // print(mahasiswa2.$2);
  // print(mahasiswa2.$3);
  // print(mahasiswa2.b);
  // print(mahasiswa2.$4);
}

// Langkah 3

// Map<String, dynamic> move(Map<String, dynamic> record) {
//   var temp = record['a'];
//   record['a'] = record['b'];
//   record['b'] = temp;
//
//   return record;
// }

// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }