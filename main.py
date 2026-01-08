# =========================================
# PROGRAM PERCABANGAN LENGKAP PYTHON
# If - Else | And | Or | Not | Switch Case
# =========================================

print("=== MENU PROGRAM ===")
print("1. Cek Genap / Ganjil")
print("2. Cek Nilai Kelulusan (AND)")
print("3. Diskon Belanja (OR)")
print("4. Validasi Angka (NOT)")
print("5. Menu Makanan (Switch Case)")

pilihan = int(input("Pilih menu (1-5): "))
print("---------------------")

# ================= IF - ELSE =================
if pilihan == 1:
    angka = int(input("Masukkan angka: "))
    
    if angka % 2 == 0:
        print("Angka Genap")
    else:
        print("Angka Ganjil")

# ================= AND =================
elif pilihan == 2:
    nilai = int(input("Masukkan nilai: "))
    kehadiran = int(input("Masukkan kehadiran (%): "))

    if nilai >= 75 and kehadiran >= 80:
        print("Lulus")
    else:
        print("Tidak Lulus")

# ================= OR =================
elif pilihan == 3:
    member = input("Apakah member? (ya/tidak): ")
    total = int(input("Masukkan total belanja: "))

    if member == "ya" or total >= 500000:
        diskon = 0.2
    elif total >= 300000:
        diskon = 0.1
    else:
        diskon = 0

    harga_akhir = total - (total * diskon)

    print("Diskon:", diskon * 100, "%")
    print("Harga awal:", total)
    print("Harga akhir:", harga_akhir)

# ================= NOT =================
elif pilihan == 4:
    angka = int(input("Masukkan angka: "))

    if not angka > 100:
        print("Angka kurang dari atau sama dengan 100")
    else:
        print("Angka lebih dari 100")

# ================= SWITCH CASE =================
elif pilihan == 5:
    menu = int(input("Pilih menu makanan (1-3): "))

    match menu:
        case 1:
            print("Nasi Goreng")
        case 2:
            print("Mie Ayam")
        case 3:
            print("Bakso")
        case _:
            print("Menu tidak tersedia")

# ================= DEFAULT =================
else:
    print("Pilihan tidak valid")
