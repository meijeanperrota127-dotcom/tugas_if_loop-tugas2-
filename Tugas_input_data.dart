import 'dart:io';
import 'dart:math';

void main() {
// 1. Buat program untuk menentukan hasil huruf dari angka 0-100 :
  print('Soal no 1');
  stdout.write('Masukkan nilai angka (0 - 100): ');
  String input = stdin.readLineSync()!;
  double nilai = double.parse(input);

  // Menentukan nilai huruf
  if (nilai >= 85) {
    print('Nilai Huruf: A');
  } else if (nilai >= 70) {
    print('Nilai Huruf: B');
  } else if (nilai >= 55) {
    print('Nilai Huruf: C');
  } else {
    print('Nilai Huruf: D');
  }

  print('\n------------------------------------\n');

// 2. Buat program yang menampilkan bilangan 1-20 dengan sebuah keterangan :
 print('Soal no 2');
 stdout.write('Masukkan batas angka: ');
  int i = int.parse(stdin.readLineSync()!);
    if (i % 3 == 0 && i % 5 == 0) {
      print('FizzBuzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else {
      print('');
    }


  print('\n------------------------------------\n');

// 3. Aplikasi penghitung dimana aplikasi akan meminta pengguna untuk memasukkan sebanyak 5
// buah angka, dan kemudian akan menghitung serta menampilkan jumlah, rata-rata, nilai
// maksimum, dan nilai minimum dari angka-angka yang dimasukkan.
print('Soal no 3');
print('Masukkan 5 angka :');
stdout.write('Angka ke-1 : ');
double a1 = double.parse(stdin.readLineSync()!);
stdout.write('Angka ke-2 : ');
double a2 = double.parse(stdin.readLineSync()!);
stdout.write('Angka ke-3 : ');
double a3 = double.parse(stdin.readLineSync()!);
stdout.write('Angka ke-4 : ');
double a4 = double.parse(stdin.readLineSync()!);
stdout.write('Angka ke-5 : ');
double a5 = double.parse(stdin.readLineSync()!);

double jumlah = a1 + a2 + a3 + a4 + a5;
double rataRata = jumlah / 5;
List<double> angkaList = [a1, a2, a3, a4, a5];
double maksimum = angkaList.reduce(max);
double minimum = angkaList.reduce(min);

print('Jumlah: $jumlah');
print('Rata-rata: $rataRata');
print('Nilai Maksimum: $maksimum');
print('Nilai Minimum: $minimum');

  print('\n------------------------------------\n');

// 4. Aplikasi menebak angka adalah permainan tebak angka, di mana pengguna harus menebak angka
// (mulai dari 0 sampai 5) yang dipilih secara acak oleh program.
print('Soal no 4');
stdout.write('Masukan Angka Anda (0-5): ');
  int angkaTebakan = int.parse(stdin.readLineSync()!);
  var random = Random();
  int angkaRandom = random.nextInt(6); 

  if (angkaTebakan == angkaRandom) {
    print('Selamat, tebakan Anda benar! Angkanya adalah $angkaRandom');
  } else {
    print('Tebakan Anda salah! Angka yang benar adalah $angkaRandom');
  }
}