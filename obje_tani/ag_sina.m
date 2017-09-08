function sonuc = ag_sina(giris,W,B,adet,yazdir)
T=1;	%surekli 1 ver
X=zeros(sum(adet),1);
sonuc=zeros(adet(size(adet,2)),1);
X(1:adet(1))=giris(:);
noron=adet(1)+1;
weyt=1;
beta=adet(1)+1;
z=0;
sayac=1;
for k=1:(size(adet,2)-1)
    for asdf=1:adet(k+1)
        ag=0;
        for i=1:adet(k)
            ag=ag+(X(z+i)*W(weyt));
            weyt=weyt+1;
        end
        ag=ag+(T*B(beta));
        X(noron)=logsig(ag);
	if k==(size(adet,2)-1)
	sonuc(sayac)=X(noron);
	sayac=sayac+1;
	end
        noron=noron+1;
        beta=beta+1;
    end
    z=z+adet(k);
end
    sonuc=rot90(sonuc);
    if strcmp(yazdir,'yazdir')
        sonuc2=1*round(sonuc(3))+2*round(sonuc(2))+4*round(sonuc(1));
       switch sonuc2
           case 0
               disp('ucgen');
           case 1
               disp('dikucgen');
           case 2 
               disp ('kare');
           case 3
               disp('besgen');
           case 4
               disp('yamuk');
           case 5 
               disp ('deltoit');
           case 6
               disp('paralelkenar');
           case 7
               disp('daire');
           otherwise
               disp('taninmadi!');
       end
       
    end
end