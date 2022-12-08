class Odev2{

  double celsiusToFahrenheit(double celsius){
    double fahrenheit = (celsius * 1.8) + 32;
    return fahrenheit;
  }

  void dikdortgenCevre(double en, double boy){
    double cevre = (2 * en) + (2 * boy);
    print("Dikdörtgenin Çevresi: $cevre");
  }

  int faktoriyel(int sayi){
    int sonuc = 1;
    if(sayi == 0){
      sonuc = 1;
    }
    else{
      for(var i=1; i<=sayi; i++){
        sonuc *= i;
      }
    }
    return sonuc;
  }

  void kacTaneA(String kelime){
    kelime = kelime.toLowerCase();
    int aSayisi = 'a'.allMatches(kelime).length;
    print("Bu kelimedeki 'a' harfi sayısı: $aSayisi");
  }

  double icAci(int kenar){
    double sonuc = (((kenar - 2) * 180) / kenar);
    return sonuc;
  }

  int maaasHesapla(int gun){
    int maas = 0;
    int calismaSaati = gun * 8;
    if(calismaSaati > 150){
      int mesaiSaati = calismaSaati - 150;
      maas = (150 * 40) + (mesaiSaati * 80);
    }
    else{
      maas = calismaSaati * 40;
    }
    return maas;
  }

  int otoparkUcretiHesapla(int sure){
    int ucret = 0;
    if(sure > 1){
      ucret = (50 + ((sure - 1) * 10));
    }
    else{
      ucret = 50;
    }
    return ucret;
  }


}