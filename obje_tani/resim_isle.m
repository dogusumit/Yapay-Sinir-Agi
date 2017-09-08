function donus=resim_isle(resim)
resim=imread(resim);

if ~isa(resim,'logical')
resim=im2bw(resim);
end

konum=zeros(1,4);
bulduk=false;
for i=1:size(resim,1)
    for j=1:size(resim,2)
        if resim(i,j)==0
            konum(1)=i;
            bulduk=true;
            break;
        end
        if bulduk==true
            break;
        end
    end
end
bulduk=false;
for i=size(resim,1):-1:1
    for j=1:size(resim,2)
        if resim(i,j)==0
            konum(2)=i;
            bulduk=true;
            break;
        end
        if bulduk==true
            break;            
        end
    end
end
bulduk=false;
for i=1:size(resim,2)
    for j=1:size(resim,1)
        if resim(j,i)==0
            konum(3)=i;
            bulduk=true;
            break;
        end
        if bulduk==true
            break;
        end
    end
end
bulduk=false;
for i=size(resim,2):-1:1
    for j=1:size(resim,1)
        if resim(j,i)==0
            konum(4)=i;
            bulduk=true;
            break;
        end
        if bulduk==true
            break;
        end
    end
end
resim=resim(konum(1):konum(2),konum(3):konum(4));
resim=imresize(resim,[200 200]);
resim=1-resim;

donus=zeros(1,4);
donus(1)=sum(sum(resim(1:100,1:100)))/10000;
donus(2)=sum(sum(resim(1:100,101:200)))/10000;
donus(3)=sum(sum(resim(101:200,1:100)))/10000;
donus(4)=sum(sum(resim(101:200,101:200)))/10000;

% figure;
% imshow(resim);

end

