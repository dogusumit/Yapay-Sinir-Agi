girisler(1,:)=resim_isle('veriseti/ucgen.bmp');
girisler(2,:)=resim_isle('veriseti/dikucgen.bmp');
girisler(3,:)=resim_isle('veriseti/kare.bmp');
girisler(4,:)=resim_isle('veriseti/besgen.bmp');
girisler(5,:)=resim_isle('veriseti/yamuk.bmp');
girisler(6,:)=resim_isle('veriseti/deltoit.bmp');
girisler(7,:)=resim_isle('veriseti/paralelkenar.bmp');
girisler(8,:)=resim_isle('veriseti/daire.bmp');
cikislar=[0 0 0;0 0 1;0 1 0;0 1 1;1 0 0;1 0 1;1 1 0;1 1 1];
adet=[4 6 3];  %katmanlardaki noron sayisi
hata_payi=0.1;
[W ,B]= ag_olustur(adet); % agirliklarin sayisini belirliyor ve rasgele degerler atiyor
[W ,B, hata]= ag_egit(girisler,cikislar,W,B,adet,hata_payi); % agirliklari ayarlayip geri donduruyor

for i=1:8
sonuc(i,:)=ag_sina(girisler(i,:),W,B,adet,'yazdir'); % verilen girisleri ve agirliklari kullanarak sonuc uretiyor
end

