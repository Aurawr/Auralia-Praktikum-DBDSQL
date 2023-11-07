# Laporan Praktikum Modul 8: SQL JOIN
Berikut adalah laporan praktikum dari tugas modul 8 yang berisi mengenai langkah-langkah pengerjaan saya.

## Langkah Praktikum
1. Pertama download dan salin data yang telah disediakan di google drive ke SQL Script pada server masing-masing dengan membuat database baru.

![image](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/acb62e0b-018c-4261-b4e3-589b0b7281cf)

2. Jalankan atau execute semua kode yang sudah disalin sehingga terbuat table beserta isian data masing-masing tabel.
Berikut contoh hasil tabel student yang telah dibuat beserta datanya.

![image](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/6728fd1e-5a2f-4d4a-af8c-82639b9bb8fb)

3. Untuk menampilkan semua nama mahasiswa beserta nama departemennya, maka perlu menggunakan perintah `SELECT n.namaKolom AS nama_alias` untuk memilih salah satu kolom dari salah satu tabel yang diinginkan dan memberikan nama lain atau nama alternatif pada kolom yang dipilih. Sedangkan perintah `COALESCE` digunakan untuk mengganti nilai sebuah data apabila memiliki nilai 'NULL' dengan string yang diinginkan. Kemudian gunakan `FROM namaTable_1 LEFT JOIN namaTable_2 ON namaTable_1.kolom = namaTable_2.kolom` untuk menggunakan perintah left join untuk menggabungkan semua baris pada table kiri dengan baris yang sesuai pada tabel kanan. Pada soal ini berikut implementasi kodenya.
```
select s.name as Nama_Mahasiswa, coalesce (d.dept_name, 'Null') as Nama_Departemen
from student s 
left join department d on s.dept_name = d.dept_name;
```

![WhatsApp Image 2023-11-06 at 20 32 12_3dd02d2d](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/a056b942-670f-424f-8ef0-1738414459f5)

4. Kemudian untuk menampilkan semua nama mahasiswa beserta nama department yang memiliki total SKS (total credit) lebih dari 100 pertama menggunakan perintah `SELECT n.namaKolom AS nama_alias` seperti sebelumnya, lalu menggunakan perintah `JOIN` untuk menggabungkan dua table yang kemudian diikuti perintah `WHERE` untuk menentukan data yang akan ditampilkan berdasarkan kondisi atau kriteria tertentu yang dimana disini digunakan untuk mengambil data dengan kondisi mahasiswa yang memiliki total SKS > 100.
```
select s.name as Nama_Student, d.dept_name as Nama_Departemen
from student s
join department d on s.dept_name = d.dept_name
where s.tot_cred > 100;
```

![WhatsApp Image 2023-11-06 at 20 53 04_a12490dd](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/617d6959-1abc-484b-8b49-dccef9c8f3c4)

5. Untuk soal terakhir yaitu menampilkan nama mahasiswa dan nama instructor yang bekerja pada department yang sama diawali dengan menggunakan perintah `SELECT` yang sama, kemudian menggunakan perintah join untuk menggabungkan antara tabel departemen dengan student pada bagian kolom nama departemen yang memiliki nilai sama dan menggabungkan tabel instructor dan departemen pada kondisi nama departemen yang sama juga.
```
select s.name as Nama_Student, i.name as Nama_Instructor
from student s
join department d on s.dept_name = d.dept_name
join instructor i on i.dept_name = d.dept_name;
```

![WhatsApp Image 2023-11-06 at 21 01 25_8ac9ac86](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/db3f61b4-f6ae-466e-843d-3cc1605c9d1e)
