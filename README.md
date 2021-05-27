# fluttertckimliknvigovtr

Flutter için geliştirilmiş bir TC no doğrulama paketidir.

## - Örnek Kullanım

Fluttertckimliknvigovtr checkGo = new Fluttertckimliknvigovtr(dogumTarihi: "2002",Ad:"İsmail",Soyad:"Döndü",TcNo:"2565233333");
var checkFin = checkGo.getCheck();


if(checkFin.toString() == "true"){

// TC DOĞRU

}else{

// YANLIŞ

}
