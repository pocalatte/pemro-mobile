# Tugas Praktikum

## Langkah 1 dan 2

Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
void main() {
  String test = "test2";
  if (test == "test1") {
    print("test1");
  } else if (test == "test2") {
    print("test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("test2 again");
}
```

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

> Jawab :
> *Hasil running*`<br>`
> ![alt text](screenshoot/Praktikum1_Langkah1.png)

> -> variabel test memiliki nilai "test2", sehingga kondisi if (test == "test1") tidak terpenuhi dan
> blok else if (test == "test2") yang dieksekusi, menghasilkan output “Test2”. Selanjutnya, kondisi
> else tidak dieksekusi karena salah satu kondisi sebelumnya sudah terpenuhi. Pada kondisi kedua,
> if (
> test == "test2") langsung dieksekusi karena kondisinya benar, menghasilkan output “Test2 again”.

## Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
void main() {
  String test = "true";
  if (test) {
    print("Kebenaran");
  }
}
```

Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan if/else.

> Jawab :
> *Hasil running*`<br>`
> ![alt text](screenshoot/Praktikum1_Langkah3_false.png)
>
> - terjadi error, dikarenakan harusnya boolean agar valuenya true atau false
> - Pembenaran
>   ![alt text](screenshoot/Praktikum1_Langkah3_true.png)

# Praktikum 2

## Langkah 1 dan 2

Ketik atau salin kode program berikut ke dalam fungsi main().

```dart
main() {
  while (counter < 33) {
    print(counter);
    counter++;
  }
}
```

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki
jika terjadi error.

> Jawab :
>
> - kode tersebut akan menghasilkan error karena, variabel counter harus dideklarasi menggunakan int
> - Pembenaran

```dart
main() {
  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }
}
```

**Output:**

```
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
```

## Langkah 3

Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

```dart
main() {
  do {
    print(counter);
    counter++;
  } while (counter < 77);
}
```

> Jawab :
>
> - kode tersebut sudah benar dan akan menghasilkan output berikut
>   **Output:**

```
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
```

# Praktikum 3

## Langkah 1 dan 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki
jika terjadi error.

```dart
main() {
  for (Index = 10; index < 27; index) {
    print(Index);
  }
}
```

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki
jika terjadi error.

> Jawab :
>
> - pada variable index harus ditambahkan `int` dan harus terdapat opersai increment `index++` agar
>   for dapat berjalan sesuai semestinya
> - pembenaran

```dart
main() {
  for (int index = 10; index < 27; index++) {
    print(index);
  }
}
```

**Output:**

```
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
```

## Langkah 3

> Jawab :

```dart
main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21)
      break;
    else if (index > 1 || index < 7) continue;
    print(index);
  }
}
```

> - Kondisi pada else if yaitu index > 1 || index < 7 selalu akan bernilai true untuk semua nilai
>   index dari 10 hingga 26. Hal ini karena jika index lebih besar dari 1, maka kondisi index > 1
>   akan terpenuhi dan seluruh blok continue akan dieksekusi, sehingga perintah print(index) tidak
>   pernah tercapai.
> - Pembenaran

```dart
main() {
  for (int index = 10; index < 27; index++) {
    if (index == 21) {
      break;
    } else if (index < 7) {
      continue;
    }
    print(index);
  }
}
```

**Output**

```
10
11
12
13
14
15
16
17
18
19
20
```

# Tugas Praktikum

> 1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan
>    beserta penjelasannya!
> 2. Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan
>    Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

> Jawab :

```dart
main() {
  String nama = "Ellois Karina Handoyo";
  String nim = "2241720154";

  int i = 0;

  bool bilanganPrima(int prima) {
    if (prima < 2) return false;

    for (int i = 2; i * i <= prima; i++) {
      if (prima % i == 0) {
        return false;
      }
    }
    return true;
  }

  while (i <= 201) {
    if (bilanganPrima(i)) {
      print("($i) = Nama: $nama, NIM: $nim");
    }
    i++;
  }
}
```
