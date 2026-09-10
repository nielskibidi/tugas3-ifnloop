import 'dart:io';

void main() {
  // stdout.writeln('Masukan angka 1 Anda');
  // var inputUser1 = stdin.readLineSync()!;
  // stdout.writeln('Masukan angka 2 Anda');
  // var inputUser2 = stdin.readLineSync()!;

  // num hasil = num.parse(inputUser1) + num.parse(inputUser2);

  // print('Ini hasil dari user $hasil')

  // =========================================================================================

  // No. 1 Menentukan nilai huruf dari angka 0–100
  // stdout.write('Masukkan nilai angka (0-100): ');
  // String? inputNilai = stdin.readLineSync();

  // if (inputNilai != null && inputNilai.isNotEmpty) {
  //   double nilai = double.parse(inputNilai);
  //   String nilaiHuruf;

  //   if (nilai >= 85 && nilai <= 100) {
  //     nilaiHuruf = 'A';
  //   } else if (nilai >= 70 && nilai < 85) {
  //     nilaiHuruf = 'B';
  //   } else if (nilai >= 55 && nilai < 70) {
  //     nilaiHuruf = 'C';
  //   } else if (nilai >= 0 && nilai < 55) {
  //     nilaiHuruf = 'D';
  //   } else {
  //     nilaiHuruf = 'Nilai tidak valid';
  //   }

  //   print('Grade: $nilaiHuruf');
  // } else {
  //   print('Input tidak boleh kosong!');
  // }

  // print('\n');

  // =========================================================================================

  // 2. Menampilkan bilangan 1–20
  // for (int i = 1; i <= 20; i++) {
  //   if (i % 3 == 0 && i % 5 == 0) {
  //     print('$i: FizzBuzz');
  //   } else if (i % 3 == 0) {
  //     print('$i: Fizz');
  //   } else if (i % 5 == 0) {
  //     print('$i: Buzz');
  //   } else {
  //     print('$i');
  //   }
  // }

  // print('\n');

  // =========================================================================================

  // 3. Aplikasi penghitung
  List<double> daftarAngka = [];

  for (int i = 1; i <= 5; i++) {
    stdout.write('Masukkan angka ke-$i: ');
    String? inputAngka = stdin.readLineSync();
    if (inputAngka != null && inputAngka.isNotEmpty) {
      daftarAngka.add(double.parse(inputAngka));
    }
  }

  if (daftarAngka.length == 5) {
    double jumlah = daftarAngka.reduce((a, b) => a + b);
    double rataRata = jumlah / daftarAngka.length;
    double maksimum = daftarAngka.reduce((a, b) => a > b ? a : b);
    double minimum = daftarAngka.reduce((a, b) => a < b ? a : b);

    print('Jumlah         : $jumlah');
    print('Rata-rata      : $rataRata');
    print('Nilai Maksimum : $maksimum');
    print('Nilai Minimum  : $minimum');
  } else {
    print('Input minimal 5 angka.');
  }

  print('\n');
}
