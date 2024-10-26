# Laporan Praktikum

## Praktikum 1

### Langkah 1 dan 2

Ketik atau salin kode program berikut ke dalam void main().

```dart
main() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print(list.length);
  print(list[1]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}
```

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
**Output:**

```
3
2
1
```

> Jawab :
> list [1, 2, 3] diinisialisasi. Fungsi assert memverifikasi bahwa panjang list adalah 3 dan elemen
> kedua (indeks 1) adalah 2, yang keduanya benar. Setelah itu, panjang list dan elemen kedua
> dicetak,
> menghasilkan "3" dan "2". Elemen kedua kemudian diubah menjadi 1, dan diperiksa lagi menggunakan
> assert

### Langkah 3

Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value =
null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

> Jawab :
>
> - `List.filled(5, null)` digunakan untuk membuat list dengan 5 elemen yang diisi dengan `null`.

```dart
main() {
  final List<String?> list = List.filled(5, null);
  list[1] = "Ellois Karina Handoyo";
  list[2] = "2241720154";

  assert(list.length == 5);
  assert(list[1] == "Ellois Karina Handoyo");
  assert(list[2] == "2241720154");

  print(list.length);
  print(list[1]);
  print(list[2]);
}
```

**Output**

```
5
Ellois Karina Handoyo
2241720154
```

## Praktikum 2

### Langkah 1 dan 2

Ketik atau salin kode program berikut ke dalam fungsi main().

var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);

```dart
main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
```

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki
jika terjadi error.

> Jawab :
> Kode tersebut mendefinisikan dan mencetak Set yang berisi lima unsur halogen, dan mencetak semua
> elemen Set dengan urutan yang tidak terjamin, karena Set dalam Dart tidak terurut.

```
{fluorine, chlorine, bromine, iodine, astatine}
```

### Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
main() {
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  print(names1);
  print(names2);
  print(names3);
}
```

apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel
tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi
berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum
selanjutnya.

> Jawab :
> **Output**

```
{}
{}
{}

```

> - metode .add() untuk menambahkan satu per satu elemen ke dalam Set names1.
> - metode .addAll() untuk menambahkan beberapa elemen sekaligus ke dalam Set names2. Metode ini
>   menerima iterable, sehingga kita bisa langsung menambahkan dua elemen sekaligus dengan kurung
>   kurawal {}.
> - Perbaikan

```dart
main() {
  var names1 = <String>{};
  Set<String> names2 = {};

  names1.add("Ellois Karina Handoyo");
  names1.add("2241720154");
  names2.addAll({"Ellois Karina Handoyo", "2241720154"});

  print(names1);
  print(names2);
}
```

**Output**

```
{Ellois Karina Handoyo, 2241720154}
{Ellois Karina Handoyo, 2241720154}
```

## Praktikum 3

### Langkah 1 dan 2

Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);
}
```

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki
jika terjadi error.

> Jawab :
>
> - `gifts` adalah Map dengan tipe kunci `String` dan nilai yang bisa berupa `String` maupun `int`.
>   Map ini menyimpan data menggunakan pasangan kunci-nilai, seperti `'first': 'partridge'`.
> - `nobleGases` adalah Map dengan tipe kunci `int` dan nilai yang bisa berupa `String` atau `int`.
>   Misalnya, `2: 'helium'` dan `18: 2` menunjukkan bahwa tipe nilainya tidak harus seragam.

**Output**

```
{first: partridge, second: turtledoves, fifth: 1}
{2: helium, 10: neon, 18: 2}
```

### Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
main() {
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

> Jawab :
>
> 1. Deklarasi variabel mhs1 dan mhs2 menggunakan Map<String, String> dan Map<int, String> tidak
>    akan menimbulkan error, karena Anda mendefinisikan Map yang dapat menerima pasangan kunci-nilai
>    dengan tipe yang sesuai:
>
> * mhs1: Map<String, String>, di mana baik kunci maupun nilainya adalah String.
> * mhs2: Map<int, String>, di mana kunci adalah int dan nilai adalah String.

> 2. Error yang mungkin muncul adalah pada variabel gifts dan nobleGases. Karena sebelumnya Anda
>    mendeklarasikan gifts sebagai Map<String, dynamic> (dengan nilai campuran String dan int), lalu
>    mencoba memperbarui elemen-elemen tanpa mendefinisikannya ulang, Dart mungkin menganggap tipe
>    data tidak konsisten.
> 3. Selain itu, kode di atas tidak mendeklarasikan ulang gifts dan nobleGases, sehingga jika Anda
>    ingin memperbarui variabel-variabel ini, Anda perlu memastikan bahwa tipe datanya konsisten dan
>    sesuai dengan tipe Map yang sudah ditetapkan.
>    > -> Perbaikan

```dart
main() {
  var gifts = Map<String, String>();
  var nobleGases = Map<int, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Ellois Karina Handoyo';
  mhs1['nim'] = '2241720154';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Ellois Karina Handoyo';
  mhs2[2] = '2241720154';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
```

**Output**

```
{first: partridge, second: turtledoves, fifth: golden rings}
{2: helium, 10: neon, 18: argon}
{nama: Ellois Karina Handoyo, nim: 2241720154}
{1: Ellois Karina Handoyo 2: 2241720154}
```

## Praktikum 4

### Langkah 1 dan 2

Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);
}
```

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki
jika terjadi error.

> Jawab :
> `list [1, 2, 3]` diinisialisasi. Fungsi assert memverifikasi bahwa panjang `list` adalah 3 dan
> elemen
> kedua (indeks 1) adalah 2, yang keduanya benar. Setelah itu, panjang `list` dan elemen kedua
> dicetak,
> menghasilkan "3" dan "2". Elemen kedua kemudian diubah menjadi 1, dan diperiksa lagi menggunakan
> assert

```
[1, 2, 3]
[0, 1, 2, 3]
4
```

### Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
main() {
  list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan
buat laporannya!

> Jawab :
>
> - Spread Operator digunakan untuk menyebarkan elemen-elemen dari satu list ke dalam list lain.
>   Null-aware Spread Operator (...?) digunakan untuk mencegah error jika list yang akan disebarkan
>   bernilai null.
> - terjadi eror karena tidak ada `var`, dan jika ditambahkan hasilnya sebagai berikut

**Output**

```
[1, 2, null]
4
```

> - menambahkan variable list

```dart
main() {
  var list1 = [1, 2, null, '2241720189'];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
}
```

**Output**

```
[1, 2, null, 2241720154]
5
```

### Langkah 4

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
main() {
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel
promoActive ketika true dan false.

> Jawab :
>
> - Variable promoAvtive belum dideklarasikan dan akan terjadi error
> - Pembenaran

```dart
main() {
  bool promoActive = true;

  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```

**Output**

```
[Home, Furniture, Plants, Outlet]
```

```dart
main() {
  bool promoActive = false;

  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```

**Output**

```
[Home, Furniture, Plants]
```

### Langkah 5

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
main() {
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login
mempunyai kondisi lain.

> Jawab :
> terdapat error karena `case` yang digunakan dalam `if` statement tidak valid dalam Dart. Dart
> tidak memiliki `case` seperti dalam `switch-case` untuk digunakan di dalam kondisi `if`.
>
> - Pembenaran

```dart
main() {
  var login = 'Manager';

  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory'
  ];
  print(nav2);
}
```

**Output**

```
[Home, Furniture, Plants, Inventory]
```

```dart
main() {
  var login = 'Employee';

  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory'
  ];
  print(nav2);
}
```

**Output**

```
[Home, Furniture, Plants]
```

### Langkah 6

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
main() {
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan
dokumentasikan hasilnya.

> Jawab :
> Collection for digunakan untuk menghasilkan elemen-elemen baru dalam list listOfStrings
> berdasarkan iterasi dari listOfInts. Dengan kata lain, untuk setiap elemen di listOfInts, elemen
> baru berupa string #1, #2, #3 akan ditambahkan ke dalam list listOfStrings.
> **Output**

```
[#0, #1, #2, #3]
```

## Praktikum 5

### Langkah 1 dan 2

Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
}
```

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki
jika terjadi error.

> Jawab :
> Hasilnya akan seperti ini

```
(first, last, a: 2, b: true)
```

> hasil ini kurang sesuai karena `nilai` membutuhkan `key` untuk menyimpan pasangan pada `Map`
> seperti contoh berikut

```dart
main() {
  var record = {
    'first': 'first',
    'a': 2,
    'b': true,
    'last': 'last'
  };
  print(record);
}
```

**Output**

```
{first: first, a: 2, b: true, last: last}
```

### Langkah 3

Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.

```dart
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main()
sehingga tampak jelas proses pertukaran value field di dalam Records.

> Jawab :
> **Output**
> tidak terjadi ke erroran

```
(first, last, a: 2, b: true)
```

> - agar relevan dari jawaban langkah 1 dan 2

```dart
main() {
  var record = {'first': 'first', 'a': 2, 'b': true, 'last': 'last'};
  print('before move: $record');

  var result = move(record);
  print('after move: $result');
}

Map<String, dynamic> move(Map<String, dynamic> record) {
  var temp = record['a'];
  record['a'] = record['b'];
  record['b'] = temp;

  return record;
}
```

**Output**

```
before move: {first: first, a: 2, b: true, last: last}
after move: {first: first, a: true, b: 2, last: last}
```

### Langkah 4

Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

```dart
main() {
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  print(mahasiswa);
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada
variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!

> Jawab :
> akan menghasilkan error, karena mendeklarasikan sebuah `Record (String, int)` dengan nama
> `mahasiswa` tanpa menginisialisasi nilai awalnya
>
> - Perbaikan

```dart
main() {
  (String, int) mahasiswa = ('Ellois Karina Handoyo', 2241720154);
  print(mahasiswa);
}
```

**Output**

```
(Ellois Karina Handoyo, 2241720154)
```

### Langkah 5

Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

```dart
main() {
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama
dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!

> Jawab :

**Output**

```
first
2
true
last
```

> Menambahkan isi record dengan nama dan NIM

```dart
main() {
  var mahasiswa2 = ('first', 'Ellois Karina Handoyo', '2241720154', b: true, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.$2);
  print(mahasiswa2.$3);
  print(mahasiswa2.b);
  print(mahasiswa2.$4);
}
```

**Output**

```
first
Ellois Karina Handoyo
2241720154
true
last
```

> - Jika menggunakan positional fields, Anda mengakses dengan $1, $2, dan seterusnya.
> - Jika menggunakan named fields, Anda mengaksesnya dengan nama field yang Anda tetapkan.

## Tugas Praktikum

1. Jelaskan yang dimaksud Functions dalam bahasa Dart!
2. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
3. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
4. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
5. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
6. Jelaskan dengan contoh cara membuat return multiple value di Functions!

> Jawab :
>
> 1. Functions dalam Dart adalah blok kode yang dapat dipanggil berulang kali untuk menjalankan
>    tugas tertentu. Functions dapat menerima input dalam bentuk parameter dan mengembalikan output.
>    Setiap function memiliki tipe kembalian (return type), yang menunjukkan jenis nilai yang
>    dikembalikan.
> 2. 

> * Required Parameters
>   -> Parameter yang harus selalu diisi nilainya saat memanggil fungsi.
>   -> Diunakan ketika nilai parameter sangat penting dan harus selalu diberikan.
>   -> Contoh :

```dart
void greet(String name) {
  print('nama saya $name');
}

void main() {
  var name = 'ellois';
  return greet(name);
}
```

**Output**

```
nama saya ellois
```

> * Optional Positional Parameters
>   -> Parameter yang boleh diisi atau tidak. Jika tidak diisi, akan menggunakan nilai default (jika
>   ada). Urutan parameter harus sesuai dengan definisi.
>   -> Digunakan ketika ada parameter yang sering digunakan, tetapi tidak selalu diperlukan.
>   -> Contoh :

```dart
void greetWithOptional(String name, [int age = 20]) {
  print('$name berumur $age tahun.');
}

void main() {
  var name = 'ellois';
  return greetWithOptional(name);
}
```

**Output**

```
ellois berumur 20 tahun.
```

> * Named Parameters
>   -> Parameter yang boleh diisi atau tidak. Urutan parameter tidak penting karena masing-masing
>   parameter memiliki nama
>   -> DIgunakan ketika ada banyak parameter dan ingin memberikan fleksibilitas kepada pengguna
>   fungsi.
>   -> Contoh :

```dart
void greetWithName(String name, {int age = 20, String country = 'Indonesia'}) {
  print('$name dari $country dan berumur $age tahun.');
}

void main() {
  var name = 'ellois';
  return greetWithName(name);
}
```

**Output**

```
ellois dari Indonesia dan berumur 20 tahun.
```

> 3. First-Class Object adalah pemrograman yang merujuk pada entitas (seperti variabel, fungsi, atau
>    objek lainnya) yang memiliki hak istimewa dan dapat diperlakukan layaknya tipe data lainnya.

```dart
void main() {
  var penjumlahan = (int x, int y) => x + y;

  print(myFunction(5, 3));
}
```

**Output**

```
8
```

> 4. Anonymous functions adalah fungsi yang tidak memiliki nama. fungsi tersebut sering digunakan
>    sebagai
>    argumen untuk fungsi lain atau untuk membuat fungsi yang hanya digunakan sekali.

```dart
main() {
  var list = [1, 2, 3];
  list.forEach((item) {
    print(item);
  });
}
```

**Output**

```
1
2
3
```

> * Lexical Scope
>   -> Lexical scope adalah aturan di mana fungsi dapat mengakses variabel dari lingkup (scope) di
>   luar dirinya, tergantung pada di mana fungsi tersebut dideklarasikan. Variabel hanya dapat
>   diakses dalam lingkup di mana variabel itu dideklarasikan.
>   -> Contoh :

```dart
void main() {
  var name = 'ellois';
  void printName() {
    print(name); // Mengakses variabel 'name' dari scope luar
  }
  printName();
}
```

**Output**

```
ellois
```

> * Lexical Closures
>   -> Closure adalah fungsi yang "menutup" atau "mengingat" lingkup variabel dari lingkup luar di
>   mana akan didefinisikan, meskipun lingkup itu sudah selesai dieksekusi.
>   -> Contoh :

```dart
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {
  var add2 = makeAdder(2);
  print(add2(3));
}
```

**Output**

```
5
```

> 6. Pada Dart return ini mendukung pengembalian beberapa nilai secara langsung, tetapi kita bisa
>    menggunakan List, Map, dan redord untuk mengembalikan beberapa nilai.
>    -> Contoh (Menggunakan redord):

```dart
(String, int) getData() {
  return ('Ellois', 20);
}

void main() {
  var (name, umur) = getData();
  print('Nama: $name, umur: $umur');
}
```

**Output**

```
Nama: Ellois, umur: 20
```
