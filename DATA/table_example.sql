-- Buat tabel pelanggan
CREATE TABLE pelanggan (
    id_Pelanggan INT AUTO_INCREMENT PRIMARY KEY,
    nama_Pelanggan VARCHAR(255),
    Kota VARCHAR(255),
    Provinsi VARCHAR(255)
);

-- Buat tabel produk
CREATE TABLE produk (
    id_Produk INT AUTO_INCREMENT PRIMARY KEY,
    nama_Produk VARCHAR(255),
    Kategori VARCHAR(255),
    Harga DECIMAL(10, 2)
);

-- Buat tabel pembelian
CREATE TABLE pembelian (
    id_Pembelian INT AUTO_INCREMENT PRIMARY KEY,
    id_Pelanggan INT,
    id_Produk INT,
    tanggal_Pembelian DATE,
    FOREIGN KEY (id_Pelanggan) REFERENCES pelanggan(id_Pelanggan),
    FOREIGN KEY (id_Produk) REFERENCES produk(id_Produk)
);

-- Masukkan data dummy ke tabel pelanggan
INSERT INTO pelanggan (nama_Pelanggan, Kota, Provinsi)
VALUES
    ('John', 'Jakarta', 'DKI'),
    ('Maria', 'Surabaya', 'Jawa Timur'),
    ('Ahmad', 'Bandung', 'Jawa Barat'),
    ('Siti', 'Yogyakarta', 'DIY'),
    ('Rudi', 'Medan', 'Sumatera Utara'),
    ('Dewi', 'Bandung', 'Jawa Barat'),
    ('Budi', 'Jakarta', 'DKI'),
    ('Sari', 'Surabaya', 'Jawa Timur'),
    ('Ani', 'Medan', 'Sumatera Utara'),
    ('Joko', 'Yogyakarta', 'DIY'),
    ('Lina', 'Bandung', 'Jawa Barat'),
    ('Faisal', 'Jakarta', 'DKI'),
    ('Rina', 'Surabaya', 'Jawa Timur'),
    ('Eko', 'Medan', 'Sumatera Utara'),
    ('Nina', 'Bandung', 'Jawa Barat'),
    ('Adi', 'Jakarta', 'DKI'),
    ('Ina', 'Surabaya', 'Jawa Timur'),
    ('Bambang', 'Medan', 'Sumatera Utara'),
    ('Sinta', 'Yogyakarta', 'DIY'),
    ('Rina', 'Jakarta', 'DKI');

-- Masukkan data dummy ke tabel produk
INSERT INTO produk (nama_Produk, Kategori, Harga)
VALUES
    ('Laptop Asus', 'Elektronik', 1200.00),
    ('Baju Kemeja', 'Fashion', 50.00),
    ('Meja Kerja', 'Furnitur', 250.00),
    ('Kamera Canon', 'Elektronik', 800.00),
    ('Sepatu Sport', 'Fashion', 80.00),
    ('TV LED Samsung', 'Elektronik', 900.00),
    ('Meja Makan', 'Furnitur', 300.00),
    ('Smartphone Samsung', 'Elektronik', 600.00),
    ('Kemeja Putih', 'Fashion', 45.00),
    ('Kursi Kantor', 'Furnitur', 200.00),
    ('Laptop Dell', 'Elektronik', 1100.00),
    ('Baju Dress', 'Fashion', 60.00),
    ('Lemari Pakaian', 'Furnitur', 350.00),
    ('Kamera Nikon', 'Elektronik', 750.00),
    ('Sandal Gunung', 'Fashion', 90.00),
    ('Smart TV LG', 'Elektronik', 850.00),
    ('Sofa Ruang Tamu', 'Furnitur', 400.00),
    ('Tablet iPad', 'Elektronik', 500.00),
    ('Celana Jeans', 'Fashion', 55.00),
    ('Meja Belajar', 'Furnitur', 220.00);

-- Masukkan data dummy ke tabel pembelian
INSERT INTO pembelian (id_Pelanggan, id_Produk, tanggal_Pembelian)
VALUES
    (1, 1, '2023-01-15'),
    (2, 3, '2023-02-20'),
    (3, 4, '2023-03-10'),
    (1, 2, '2023-01-18'),
    (2, 1, '2023-02-22'),
    (3, 5, '2023-03-12'),
    (1, 3, '2023-01-25'),
    (2, 4, '2023-02-28'),
    (3, 1, '2023-03-15'),
    (1, 4, '2023-04-05'),
    (1, 5, '2023-04-10'),
    (2, 5, '2023-04-08'),
    (3, 2, '2023-04-18'),
    (4, 1, '2023-04-12'),
    (4, 2, '2023-04-15'),
    (4, 3, '2023-04-20'),
    (5, 1, '2023-04-02'),
    (5, 2, '2023-04-04'),
    (6, 3, '2023-04-08'),
    (7, 4, '2023-04-10');


