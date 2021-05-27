Flutter için geliştirilmiş bir TC no doğrulama paketidir.

- Örnek Kullanım 
Fluttertckimliknvigovtr checkGo = new Fluttertckimliknvigovtr(dogumTarihi: "2002",Ad:"İsmail",Soyad:"Döndü",TcNo:"2565233333");

var test2 = checkGo.getCheck().then((apiDenDonenMesaj){

// İşlemler
});

- ; 
Doğum tarihi mutlaka 4 karakterli olmalıdır.

Thenden dönen değer String türündedir ve true veya false olarak gelir.
