# Nama : Gabriella Natasya Br Ginting
# NRP  : 5025211081
# Kelas: Probstat C

# Soal Nomor 1

# Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
# kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
# sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
# kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
# diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat 
# kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 
# responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan 
# aktivitas.

# --a
# Carilah Standar deviasi dari data selisih pasangan pengamatan tabel diatas

install.packages("BSDA")
library(BSDA)

x <- c(78, 75, 67, 77, 70, 72, 78, 70, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 100, 100)

difference <- y -x

sd(difference)

# --b
# Carilah nilai t (p-value)

t.test(x, y, paired=TRUE)
