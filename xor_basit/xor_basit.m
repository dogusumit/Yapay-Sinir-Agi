w1=rand(2,2);
w2=rand(2,1);
B1=rand(2,1);
B2=rand();
deg_w1=zeros(2,2);
deg_w2=zeros(2,1);
deg_B1=zeros(2,1);
deg_B2=0;
for i=0:1000 %iterasyon sayisi
giris=[0; 0];
cikis=0;
[w1,w2,B1,B2,deg_w1,deg_w2,deg_B1,deg_B2] = ogren(giris,cikis,w1,w2,B1,B2,deg_w1,deg_w2,deg_B1,deg_B2);
giris=[1; 0];
cikis=1;
[w1,w2,B1,B2,deg_w1,deg_w2,deg_B1,deg_B2] = ogren(giris,cikis,w1,w2,B1,B2,deg_w1,deg_w2,deg_B1,deg_B2);
giris=[0; 1];
cikis=1;
[w1,w2,B1,B2,deg_w1,deg_w2,deg_B1,deg_B2] = ogren(giris,cikis,w1,w2,B1,B2,deg_w1,deg_w2,deg_B1,deg_B2);
giris=[1; 1];
cikis=0;
[w1,w2,B1,B2,deg_w1,deg_w2,deg_B1,deg_B2] = ogren(giris,cikis,w1,w2,B1,B2,deg_w1,deg_w2,deg_B1,deg_B2);
end

test_et([0;0],w1,w2,B1,B2);
test_et([1;1],w1,w2,B1,B2);
test_et([0;1],w1,w2,B1,B2);
test_et([1;0],w1,w2,B1,B2);