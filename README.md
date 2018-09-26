# Simulated-Annealing

1.	Deskripsi Masalah
Menemukan solusi optimal untuk masalah pengoptimalan tertentu bisa menjadi tugas yang sangat sulit, seringkali tidak mungkin dilakukan. Ini karena ketika sebuah masalah menjadi cukup besar, kita perlu mencari sejumlah besar solusi yang mungkin untuk menemukan yang optimal. Bahkan dengan daya komputasi modern masih sering ada banyak kemungkinan solusi yang perlu dipertimbangkan.
Simulated annealing (SA) adalah metode untuk memecahkan masalah optimasi yang tidak dibatasi dan dibatasi. Metode memodelkan proses fisik memanaskan material dan kemudian perlahan menurunkan suhu untuk menurunkan cacat, sehingga meminimalkan energi sistem.

2.	Rancangan Metode
1.	Hasilkan 2 Solusi Acak antara -10 s/d 10
2.	Hitung rumust dengan menggunakan parameter 2 solusi yang telah dihasilkan
3.	Hasilkan 2 solusi acak antara -10 s/d 10 baru
4.	Hitung rumus dengan menggunakan parameter  2 solusi baru yang telah dihasilkan 
5.	Bandingkan kedua rumus, jika rumus baru bernilai lebih kecil dari rumus yang lama, maka solusi dan rumus lama diganti dengan yang baru
6.	Jika solusi dan rumus lama lebih besar, maka variable p di isi (exponensial dari (-deltaE/T) dan variable R di isi random 0-1
7.	Ulangi langkah 3 s/d 6 hingga 100x
8.	Kurangi temperatur dan ulangi langkah 3 s/d 7 hingga nilai temperatur dibawah nilai temperatur minimal
9.	Hitung Akurasi (Disesuaikan dengan tugas)
