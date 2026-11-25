-- ============================================================
-- Database untuk project 12409011030029-32
-- Cara pakai: buka phpMyAdmin > tab SQL > tempel semua isi file ini > Go
-- (Tidak perlu memilih database dulu, script ini membuatnya sendiri.)
-- ============================================================

CREATE DATABASE IF NOT EXISTS unpam_db
  DEFAULT CHARACTER SET utf8
  COLLATE utf8_general_ci;

USE unpam_db;

-- ------------------------------------------------------------
-- Tabel register: data akun / member
-- Dipakai oleh: register.php, loginproc.php, lihat.php, cari.php,
-- edit.php, edit2.php, hapus.php, indexuser.php, uploadfoto.php
-- ------------------------------------------------------------
DROP TABLE IF EXISTS register;
CREATE TABLE register (
  id        INT(11)      NOT NULL AUTO_INCREMENT,
  namadep   VARCHAR(50)  NOT NULL,
  namabel   VARCHAR(50)  NOT NULL,
  username  VARCHAR(100) NOT NULL,
  password  VARCHAR(100) NOT NULL,
  usia      VARCHAR(5)   NOT NULL,
  jk        VARCHAR(20)  NOT NULL,
  ttl       VARCHAR(100) NOT NULL,
  email     VARCHAR(100) NOT NULL,
  notel     VARCHAR(20)  NOT NULL,
  foto      VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY uk_username (username)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ------------------------------------------------------------
-- Tabel rumah: lokasi rumah tiap user (untuk peta)
-- Dipakai oleh: simpan_lokasi.php, indexuser.php, peta.php
-- ------------------------------------------------------------
DROP TABLE IF EXISTS rumah;
CREATE TABLE rumah (
  id            INT(11)      NOT NULL AUTO_INCREMENT,
  username      VARCHAR(100) NULL DEFAULT NULL,
  nama_pemilik  VARCHAR(100) NOT NULL,
  alamat        TEXT         NOT NULL,
  latitude      DECIMAL(10,7) NOT NULL,
  longitude     DECIMAL(10,7) NOT NULL,
  PRIMARY KEY (id),
  KEY idx_username (username)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ------------------------------------------------------------
-- Contoh data (boleh dihapus kalau tidak perlu)
-- Login contoh: username = admin, password = admin
-- ------------------------------------------------------------
INSERT INTO register (namadep, namabel, username, password, usia, jk, ttl, email, notel) VALUES
('Admin', 'Unpam', 'admin', 'admin', '20', 'Laki-laki', 'Tangerang Selatan, 1 Januari 2005', 'admin@example.com', '081234567890');

INSERT INTO rumah (username, nama_pemilik, alamat, latitude, longitude) VALUES
('admin', 'Admin Unpam', 'Jl. Puspitek Raya No. 10, Pamulang, Tangerang Selatan', -6.3463000, 106.6915000);
