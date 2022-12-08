import 'package:dart_dersleri/nesne_tabanli/odev2.dart';

void main(){
  var o2 = Odev2();

  double derece = o2.celsiusToFahrenheit(30.2);
  print("Fahrenheit: $derece");

  o2.dikdortgenCevre(12.5, 25.0);

  int faktoriyel = o2.faktoriyel(5);
  print("Faktöriyel: $faktoriyel");

  o2.kacTaneA("parametre");

  double aci = o2.icAci(7);
  print("İç Açı: $aci");

  int maas = o2.maaasHesapla(24);
  print("Maaş: $maas₺");

  int otoparkUcreti = o2.otoparkUcretiHesapla(4);
  print("Otopark Ücreti: $otoparkUcreti");


}