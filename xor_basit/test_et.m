function test_et(katman1,w1,w2,B1,B2 )

ag1=(katman1(1)*w1(1,1))+(katman1(2)*w1(2,1))+B1(1);
ag2=(katman1(1)*w1(1,2))+(katman1(2)*w1(2,2))+B1(2);
katman2(1)=logsig(ag1);
katman2(2)=logsig(ag2);
ag3=(katman2(1)*w2(1,1))+(katman2(2)*w2(2,1))+B2(1);
katman3(1)=logsig(ag3);
disp([num2str(katman1(1)),' ',num2str(katman1(2)),' = ',num2str(katman3(1))]);

end

