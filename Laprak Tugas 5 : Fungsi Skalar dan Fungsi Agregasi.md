# Laporan Praktikum Tugas 5 : Fungsi Skalar dan Fungsi Agregasi
Berikut adalah laporan praktikum dari tugas modul 8 yang berisi mengenai langkah-langkah pengerjaan saya.

## Langkah-Langkah Praktikum
### 1. Buka kembali database university yang telah dibuat sebelumnya pada modul sebelumnya.
Kemudian gunakan perintah-perintah sesuai yang diminta untuk dipraktikkan ke dalam database.

### 2. CONCAT_WS
`select concat_ws(' ',ID, name) as PROFIL` digunakan untuk menggabungkan dua atau lebih kolom menjadi satu, sedangkan untuk concat_ws sendiri digunakan untuk menggabungkan dengan memberikan sebuah pemisah, yang di dalam kode ini pemisah yang digunakan adalah spasi. 
```
select concat_ws(' ',ID, name) as PROFIL
from student;
```
![WhatsApp Image 2023-11-14 at 07 45 57_1d5840fe](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/9319d4bc-926c-4c49-a396-532dabda5ef6)

### 3. SUBSTRING_INDEX
`select substring_index(name, ' ', 1) as result` digunakan untuk memotong string yang dimasukkan dengan pemisah dan berdasarkan kata urutan kata ke berapa yang diminta, dalam kode ini adalah kata pertama.
```
select substring_index(name, ' ', 1) as result
from student;
```
![WhatsApp Image 2023-11-14 at 07 45 20_9149dcb8](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/eee278c7-dd03-4a4d-9e50-1c944fe82694)

### 4. SUBSTRING
`select substring(name, 1, 3) as result` digunakan untuk memotong string nama dengan mengambil karakter mulai dari nomor 1 hingga karakter ke 3.
```
select substring(name, 1, 3) as result
from student;
```
![WhatsApp Image 2023-11-14 at 07 46 55_d0d04044](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/79831de0-af93-4780-91e5-5846599fe8e2)

### 5. LENGHT
`select length(name) as length_of_name` digunakan untuk mengembalikan nilai atau menghitung jumlah panjang karakter nama yang ada.
```
select length(name) as length_of_name
from student;
```
![WhatsApp Image 2023-11-14 at 07 47 56_797084ad](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/8a0d7c25-9040-48b0-af3e-2417ef1193bd)

### 6. REPLACE
`select replace(title, 'sampel', 'contoh') as modified_title` digunakan untuk mengganti string dengan kata 'sampel' menjadi kata 'contoh'.
```
select replace(title, 'sampel', 'contoh') as modified_title
from course;
```
![WhatsApp Image 2023-11-14 at 07 48 23_c66c6f22](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/f9651d45-e16a-46b6-849b-bdfb0ac9d7fe)

### 7. ABS
`select abs(salary) as absolute_salary` digunakan untuk mengembalikan nilai negatif dari salary menjadi non-negatif.
```
select abs(salary) as absolute_salary
from instructor;
```
![WhatsApp Image 2023-11-14 at 07 48 43_e2a61767](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/b55f030a-a531-4010-ad5b-a785dd43b555)

### 8. CEILING
`select ceiling(budget) as rounded_budget` digunakan untuk membulatkan sebuah nilai ke atas ke bilangan terdekat.
```
select ceiling(budget) as rounded_budget
from department;
```
![WhatsApp Image 2023-11-14 at 07 49 08_cf0bbaeb](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/b8d88560-6faf-46f8-ba43-91f9fd92a0fa)

### 9. FLOOR
`select floor(salary) as rounded_salary` digunakan untuk membulatkan sebuah nilai ke bawah ke bilangan terdekat.
```
select floor(salary) as rounded_salary
from instructor;
```
![WhatsApp Image 2023-11-14 at 07 49 38_53772a05](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/493116b8-2433-4bb0-b1a2-82bac31f65f2)

### 10. ROUND
`select round(budget, 2) as rounded_budget` dignakan untuk membulatkan nilai ke dua bilangan desimal di belakang koma.
```
select round(budget, 2) as rounded_budget
from department;
```
![WhatsApp Image 2023-11-14 at 07 52 48_2637ff5e](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/253de663-3cff-4e42-8588-552bfb38d5fe)

### 11. SQRT
`select sqrt(salary) as square_root_salary` digunakan untuk menghitung nilai dari akar kuadrat suatu bilangan.
```
select sqrt(salary) as square_root_salary
from instructor;
```
![WhatsApp Image 2023-11-14 at 07 53 33_4430c55c](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/71941c35-604a-40f8-bde9-31797c2e14d6)

### 12. CURDATE
`select curdate() as tanggal_sekarang; ` digunakan untuk menampilkan tanggal pada saat ini atau tanggal sekarang.
![WhatsApp Image 2023-11-14 at 07 54 01_be8c8584](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/5d6e95ef-86a0-4fdc-88d4-0e356d027958)

### 13. CURTIME
`select curtime() as tanggal_sekarang; ` digunakan untuk menampilkan jam sekarang atau waktu saat ini.
![WhatsApp Image 2023-11-14 at 07 54 42_54f930d7](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/64208b57-492d-4f54-9200-35667499823b)

### 14. TIMESTAMP
`select timestamp('2023-11-07 12:30:00') as custom_timestamp;` digunakan untuk memberikan atau menentukan tanggal dan waktu sesuai yang ditentukan.
![WhatsApp Image 2023-11-14 at 07 55 04_c87c1c95](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/61f8e224-6e51-47b5-a11c-ed4f58a05a67)

### 15. SUM
`select sum(credits) as total_credits` digunakan untuk menjumlahkan nilai dalam suatu kolom.
```
select sum(credits) as total_credits
from course;
```
![WhatsApp Image 2023-11-14 at 07 55 28_d24fba45](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/6b5c4df3-9e05-4d90-9931-ab39dda95604)


### 16. AVG
`select avg(salary) as average_salary` digunakan untuk meghitung nilai rata-rata dari sebuah kolom.
```
select avg(salary) as average_salary
from instructor;
```
![WhatsApp Image 2023-11-14 at 07 56 03_0392c7d5](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/57c12a05-b7b8-4739-8872-0c40f36e9bb1)

### 17. COUNT
`select count(*) as total_students` digunakan untuk menghitung jumlah total semua baris dalam tabel atau kolom.
```
select count(*) as total_students
from student;
```
![WhatsApp Image 2023-11-14 at 07 57 01_f64fc756](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/41440824-62ca-4d29-bce6-e385b51965b8)

### 18. GROUP BY dan HAVING 
```
select dept_name, count(*) as total_students
from student
group by dept_name 
having count(*) > 1;
```
Perintah `group by` digunakan untuk mengelompokkan data dalam suatu kolom, sedangkan `having` digunakan untuk memilih atau memfilter suatu data berdasarkan suatu kondisi yang sudah ditentukan. perintah `having` selalu digunakan bersama dengan perintah `group by`.
![WhatsApp Image 2023-11-14 at 07 57 13_cc66ef80](https://github.com/Aurawr/Auralia-Praktikum-DBDSQL/assets/133871441/d93ec15b-b264-4c89-90f7-c3aa3cd3ef4e)
















