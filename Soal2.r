# Nama : Gabriella Natasya Br Ginting
# NRP  : 5025211081
# Kelas: Probstat C

# Soal Nomor 2

# Diketahui bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per 
# tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak 
# diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak 
# menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3.000 kilometer
# (kerjakan menggunakan library seperti referensi pada modul).

# --c
# Buatlah kesimpulan berdasarkan p-value yang dihasilkan!

x <- 23500
sigma <- 3000
n <- 100

zsum.test(x, sigma, n, alternative = "greater", mu = 25000)