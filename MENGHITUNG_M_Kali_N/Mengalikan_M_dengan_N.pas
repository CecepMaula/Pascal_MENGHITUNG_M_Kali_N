program Mengalikan_M_dengan_N;
{I.S :}
{F.S :}
uses crt;
//kamus global
var
  M, N, Hasil,Pilih : integer;

procedure Isi_M_N(var M,N : integer);
begin
gotoxy(10,5);
  write('Masukan Harga M : '); readln(M);
gotoxy(10,7);
  write('Masukan Harga N : '); readln(N);
end;

procedure Hitung_M_Kali_N(M,N : integer; var Hasil : integer);
var //kamus lokal
  i : integer;
begin
  if(N < 0)
    then
  begin
    M := -M;
    N := -N;
  end;
  if(M = 0) or (N = 0)
    then
    begin
      Hasil := 0
    end
  else
    if(N = 1)
      then
      begin
        Hasil := M
      end
    else
    begin
      Hasil := M;
      for i := 2 to N do
      Hasil := Hasil + M;
  end;
end;

procedure Tampil_Hasil(Hasil : integer);
begin
  gotoxy(5,2);
  write(M,' x ',N,' = ',Hasil);
end;

//badan program utama
begin
window(2,2,119,29); textbackground(magenta); clrscr;
gotoxy(25,2); textcolor(yellow);
write('*** PROGRAM PERKALIAN M DENGAN N MENGGUNAKAN OPERATOR PENJUMLAHAN ***');

window(2,5,119,29); textbackground(3); clrscr;

window(25,12,94,22); textbackground(15); clrscr;
repeat
  clrscr;
  gotoxy(29,2); textcolor(9);
  write('MENU PILIHAN');
  gotoxy(28,3); textcolor(9);
  write('______________');
  gotoxy(18,5); textcolor(9);
  write('1. Memasukan Harga M dan harga N');
  gotoxy(18,6); textcolor(9);
  write('2. Menampilkan hasil Perkalian');
  gotoxy(18,7); textcolor(9);
  write('0. Keluar');
  gotoxy(18,9); textcolor(9);
  write('Pilihan Anda ? '); readln(Pilih);
  //validasi menu pilihan
    if(Pilih < 0) or (Pilih > 2)
    then
    begin
    gotoxy(18,9); textcolor(9);
    write('Pilihan Tidak Ada!'); readln;
    gotoxy(18,9); clreol;
    gotoxy(18,9); textcolor(9);
    write('Pilihan Anda ? '); readln(Pilih);
    end;

  //menampilkan menu sesuai pilihan
  case (Pilih) of
   1 : begin
         clrscr;
         Isi_M_N(M,N);
       end;
   2 : begin
         clrscr;
         Hitung_M_Kali_N(M,N,Hasil);
         Tampil_Hasil(Hasil);
         gotoxy(5,4);
         textcolor(12);
         write('Tekan Enter Untuk Melanjutkan!');
         readln;
       end;
  end; //endcase
until (Pilih = 0);
end.
