function donus = denormalize(a, dizi)

    buyuk=max(dizi(:));
    kucuk=min(dizi(:));

        donus=a*(buyuk-kucuk)+kucuk;

end

