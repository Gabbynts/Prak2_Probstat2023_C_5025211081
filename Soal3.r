# Nama : Gabriella Natasya Br Ginting
# NRP  : 5025211081
# Kelas: Probstat C

# Soal Nomor 3

# Diketahui perusahaan memiliki seorang data analyst yang ingin memecahkan
# permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
# didapatkanlah data berikut dari perusahaan saham tersebut.

# --b
# Hitung sampel statistik

n1 <- 20
n2 <- 27

x1 <- 3.64
x2 <- 2.79

sd1 <- 1.67
sd2 <- 1.5

tsum.test(x1, sd1, n1, x2, sd2, n2, alternative = "greater", var.equal = TRUE)

# --c
# Lakukan uji statistik (df =2)

install.packages("mosaic")
library(mosaic)

df <- 2
plotDist(dist = 't', df, col = "blue")

# --d
# Nilai kritikal

df <- 2
p <- 0.05
qchisq(p, df, lower.tail = FALSE)
