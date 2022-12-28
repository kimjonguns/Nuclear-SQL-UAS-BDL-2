use cdm_uts_bdl;

CREATE TABLE penerbit(
	idPenerbit int NOT NULL AUTO_INCREMENT UNIQUE,
    namaPenerbit varchar(30) NOT NULL,
    PRIMARY KEY (idPenerbit)
);

ALTER TABLE penerbit ADD lokasiPenerbit varchar(30) NOT NULL;

CREATE TABLE kategori(
	idKategori int NOT NULL AUTO_INCREMENT UNIQUE,
    kategori varchar(30) NOT NULL,
    PRIMARY KEY (idKategori)
);

CREATE TABLE buku(
	idBuku int NOT NULL AUTO_INCREMENT UNIQUE,
    idPenerbit int NOT NULL,
    idKategori int NOT NULL,
    judulBuku varchar(30) NOT NULL,
    tahunTerbit year NOT NULL,
    jumlahBukuTersedia int NOT NULL,
    PRIMARY KEY (idBuku),
    FOREIGN KEY (idPenerbit) REFERENCES penerbit(idPenerbit),
    FOREIGN KEY (idKategori) REFERENCES kategori(idKategori)
);

desc buku;

CREATE TABLE suplaibuku(
	idSuplai int NOT NULL AUTO_INCREMENT UNIQUE,
    idBuku int NOT NULL,
    tanggal date NOT NULL,
    jumlah int NOT NULL,
    PRIMARY KEY (idSuplai),
    FOREIGN KEY (idBuku) REFERENCES buku(idBuku)
);

CREATE TABLE jurusan(
	idJurusan int NOT NULL AUTO_INCREMENT UNIQUE,
    namaJurusan varchar(30) NOT NULL,
    PRIMARY KEY (idJurusan)
);

CREATE TABLE anggota(
	idAnggota int NOT NULL AUTO_INCREMENT UNIQUE,
    idJurusan int NOT NULL,
    namaAnggota varchar(50) NOT NULL,
    npm char(20) NOT NULL,
    alamatAnggota text,
    noTelepon char(20) NOT NULL,
    PRIMARY KEY (idAnggota),
    FOREIGN KEY (idJurusan) REFERENCES jurusan(idJurusan)
);

CREATE TABLE peminjam(
	idPeminjam int NOT NULL AUTO_INCREMENT UNIQUE,
    idBuku int NOT NULL,
    idAnggota int NOT NULL,
    jumlahPinjam int NOT NULL,
    denda int NOT NULL,
    tglPinjam date NOT NULL,
    tglKembali date DEFAULT '0000-01-01',
    PRIMARY KEY (idPeminjam),
    FOREIGN KEY (idBuku) REFERENCES buku(idBuku),
    FOREIGN KEY (idAnggota) REFERENCES anggota(idAnggota)
);

desc buku;