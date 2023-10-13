create database MODUL2;

USE MODUL2;

create table MOVIE(
	KODE_DVD VARCHAR(10) not null primary key,
	JUDUL VARCHAR(60),
	HARGA_SEWA DOUBLE,
	DENDA DOUBLE,
	TAHUN_RILIS SMALLINT
);
create table GENRE(
	ID_GENRE smallint not null primary key,
	GENRE VARCHAR(45)
);
create table GENRE_MOVIE(
	ID_GENRE smallint,
	KODE_DVD VARCHAR(10),
	foreign key(ID_GENRE) references GENRE(ID_GENRE),
	foreign key(KODE_DVD) references MOVIE(KODE_DVD),
	primary key(ID_GENRE, KODE_DVD)
);
create table KECAMATAN(
	ID_KECAMATAN smallint not null primary key,
	KECAMATAN VARCHAR(45) not null
);

create table KELURAHAN(
	ID_KELURAHAN smallint not null primary key,
	ID_KECAMATAN smallint,
	KELURAHAN VARCHAR(45) not null,
	foreign key(ID_KECAMATAN) references KECAMATAN(ID_KECAMATAN)
);

create table PELANGGAN(
	KODE_PELANGGAN VARCHAR(10) not null primary key,
	ID_KELURAHAN smallint,
	NAMA VARCHAR(45) not null,
	ALAMAT VARCHAR(45) not null,
	JENIS_KELAMIN CHAR(1) CHECK(JENIS_KELAMIN in('P','L')),
	foreign key(ID_KELURAHAN) references KELURAHAN(ID_KELURAHAN)
);

create table KONTAK_PELANGGAN(
	NO_HP VARCHAR(25),
	KODE_PELANGGAN VARCHAR(10),
	foreign key(KODE_PELANGGAN) references PELANGGAN(KODE_PELANGGAN)
);

create table TRANSAKSI(
	KODE_DVD VARCHAR(10),
	KODE_PELANGGAN VARCHAR(10),
	TANGGAL_SEWA DATE,
	TANGGAL_WAJIB_KEMBALI DATE,
	TANGGAL_REALISASI_KEMBALI DATE,
	foreign key(KODE_DVD) references MOVIE(KODE_DVD),
	foreign key(KODE_PELANGGAN) references PELANGGAN(KODE_PELANGGAN),
	primary key(KODE_DVD, KODE_PELANGGAN, TANGGAL_SEWA)
);

alter table MOVIE modify column TAHUN_RILIS YEAR(4);