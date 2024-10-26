void main() {
  // ** Praktikum 1 **
  // Lankah 1 dan 2

  // String test = "test2";
  // if (test == "test1") {
  //   print("test1");
  // } else if (test == "test2") {
  //   print("test2");
  // } else {
  //   print("Something else");
  // }
  //
  // if (test == "test2") print("test2 again");

//   Langkah 3

//   String test = "true";
//   if (test) {
//     print("kebeneran");
//   }

  // bool test = true;
  // if (test) {
  //   print("kebeneran");
  // }

  // ** Praktikum 2 **
  // Lankah 1 dan 2

  // int counter = 0;
  // while (counter < 33) {
  //   print(counter);
  //   counter++;
  // }

  // Langkah 3

  // do {
  //   print(counter);
  //   counter++;
  // } while (counter < 77);

//   **Praktikum 3**
// Langkah 1, 2, dan 3

  // for (int index = 10; index < 27; index++) {
  //   if (index == 21) {
  //     break;
  //   } else if (index < 7) {
  //     continue;
  //   }
  //   print(index);
  // }

//   Tugas Praktikum

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
