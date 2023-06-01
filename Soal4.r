# Nama : Gabriella Natasya Br Ginting
# NRP  : 5025211081
# Kelas: Probstat C

# Soal Nomor 4

# Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk 
# mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca 
# pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan 
# dilakukan sebanyak 27 kali

# --a
# Buatlah plot sederhana untuk visualisasi data

install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

data <- read_csv("GTL.csv")
head(data)

str(data)

qplot(x = Temp, y = Light, geom = "point", data = data) + facet_grid(.~Glass, labeller = label_both)

# --b
# Lakukan uji ANOVA dua arah.

data$Glass = as.factor(data$Glass)
data$Temp_Factor = as.factor(data$Temp)

str(data)

anova = aov(Light ~ Glass*Temp_Factor, data = data)

summary(anova)

# --c
# Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap 
# perlakuan (kombinasi kaca pelat muka dan suhu operasi)

data_summary = group_by(data, Glass, Temp) %>%

  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))

print(data_summary)