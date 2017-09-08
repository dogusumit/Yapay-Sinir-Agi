function donus = normalize( dizi)
donus=zeros(size(dizi));
for i=1:size(dizi,2)
    buyuk=max(dizi(:,i));
    kucuk=min(dizi(:,i));
    for j=1:size(dizi,1)
        donus(j,i)=(dizi(j,i)-kucuk)/(buyuk-kucuk);
    end
end
end

