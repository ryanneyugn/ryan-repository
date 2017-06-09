CREATE DATABASE IF NOT EXISTS phongkham;
USE phongkham;

CREATE TABLE IF NOT EXISTS NguoiDung(
    id_nguoidung INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    passwords VARCHAR(50),
    CONSTRAINT pk_nguoidung PRIMARY KEY(id_nguoidung)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS BenhNhan(
    id_BenhNhan INT NOT NULL AUTO_INCREMENT,
    Ten NVARCHAR(255) NOT NULL,
    GT BOOLEAN,
    Tuoi INT,
    DiaChi NVARCHAR(255),
    SDT VARCHAR(20),
    id_HoSoBenhAn INT,
    CONSTRAINT pk_BenhNhan PRIMARY KEY(id_BenhNhan)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS HoSoBenhAn(
    id_HoSo INT NOT NULL AUTO_INCREMENT,
    Ten_BS NVARCHAR(255) NOT NULL,
    ChanDoan nVARCHAR(255),
    id_ToaThuoc INT NOT NULL,
    CONSTRAINT pk_HoSo PRIMARY KEY(id_HoSo)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS ToaThuoc(
    id_ToaThuoc INT NOT NULL AUTO_INCREMENT,
    id_Thuoc INT NOT NULL,
    SoLuong INT,
    NgayLap DATETIME,
    TongTien DOUBLE,
    CONSTRAINT pk_ToaThuoc PRIMARY KEY(id_ToaThuoc)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS Thuoc(
    id_Thuoc INT NOT NULL AUTO_INCREMENT,
    TenThuoc VARCHAR(255) NOT NULL,
    SoLuong INT,
    HanSuDung DATETIME,
    DVT NVARCHAR(200),
    QuyCach NVARCHAR(200),
    CONSTRAINT pk_Thuoc PRIMARY KEY(id_Thuoc)
) ENGINE = INNODB;

INSERT INTO NguoiDung(username, passwords)
VALUES('ahihi', '1234');