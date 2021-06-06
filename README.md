# fluttertckimliknvigovtr

Flutter için geliştirilmiş bir TC no doğrulama paketidir.

## - Örnek Kullanım

Fluttertckimliknvigovtr checkGo = new Fluttertckimliknvigovtr(dogumTarihi: "9999",Ad:"İsmail",Soyad:"Ylm",TcNo:"12345678950");

var test2 = checkGo.getCheck().then((apiDenDonenMesaj){

    // İşlemler

});


## - ;

* Doğum tarihi mutlaka 4 karakterli olmalıdır.

* Thenden dönen değer String türündedir ve true veya false olarak döner.
