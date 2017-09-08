veriler=dosya_oku();
veriler=veriler';
girisler=veriler(:,1:5);
girisler=normalize(girisler);
cikislar=veriler(:,6);
cikislar=normalize(cikislar);
adet=[5 4 1];  %katmanlardaki noron sayisi
hata_payi=0.05;
[W ,B]= ag_olustur(adet); % agirliklarin sayisini belirliyor ve rasgele degerler atiyor
[W ,B, hata]= ag_egit(girisler,cikislar,W,B,adet,hata_payi); % agirliklari ayarlayip geri donduruyor

for i=1:size(girisler,1)%sonuclarý yazdýr
sonuc=ag_sina(girisler(i,:),W,B,adet,'yazdir'); % verilen girisleri ve agirliklari kullanarak sonuc uretiyor
sonuc=denormalize(sonuc,veriler(:,6));
sonuc=uint32(sonuc);
disp([num2str(2000+i+1),'=',num2str(sonuc)]);
end

%2018 yýlý tahmin
tahmin=[14679682743	3507844331	3930061255	18745704942	5232252840];
for i=1:5
tahmin(i)=(tahmin(i))-min(veriler(:,i))/(max(veriler(:,i))-min(veriler(:,i)));%normalizasyon
end
sonuc=ag_sina(tahmin,W,B,adet,'yazdir')+0.53; % verilen girisleri ve agirliklari kullanarak sonuc uretiyor
sonuc=denormalize(sonuc,veriler(:,6));
sonuc=uint32(sonuc);
disp(['2018=',num2str(sonuc)]);