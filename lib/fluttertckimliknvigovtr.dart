import 'dart:async';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:xml2json/xml2json.dart';

class Fluttertckimliknvigovtr {
  late String dogumTarihi, Ad, Soyad, TcNo;

  Fluttertckimliknvigovtr(
      {required this.dogumTarihi,
      required this.Ad,
      required this.Soyad,
      required this.TcNo});

  Future<String> getCheck() async {
    var xmls = Xml2Json();
    String soap = '''<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <TCKimlikNoDogrula xmlns="http://tckimlik.nvi.gov.tr/WS">
      <TCKimlikNo>${this.TcNo}</TCKimlikNo>
      <Ad>${this.Ad}</Ad>
      <Soyad>${this.Soyad}</Soyad>
      <DogumYili>${this.dogumTarihi}</DogumYili>
    </TCKimlikNoDogrula>
  </soap:Body>
</soap:Envelope>''';

    var url = Uri.parse("https://tckimlik.nvi.gov.tr/Service/KPSPublic.asmx");

    var response = await http.post(
      url,
      headers: {
        'Host': 'tckimlik.nvi.gov.tr',
        'Content-Type': 'text/xml; charset=utf-8',
        'Content-Length': '470',
        'SOAPAction': 'http://tckimlik.nvi.gov.tr/WS/TCKimlikNoDogrula',
      },
      body: utf8.encode(soap),
    );

    xmls.parse(response.body);
    var jsonString = xmls.toParker();
    var mainData = (jsonDecode(jsonString) as Map);

    var x = mainData["soap:Envelope"]["soap:Body"]["TCKimlikNoDogrulaResponse"]
        ["TCKimlikNoDogrulaResult"];

    return x.toString();
  }
}













