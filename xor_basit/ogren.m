function [w1,w2,B1,B2,deg_w1,deg_w2,deg_B1,deg_B2] = ogren(katman1,cikis,w1,w2,B1,B2,deg_w1,deg_w2,deg_B1,deg_B2)
a=0.5;%ogrenme katsayisi
b=0.8;%momentum katsayisi
katman2=zeros(2,1);
katman3=zeros(1,1);

ag1=(katman1(1)*w1(1,1))+(katman1(2)*w1(2,1))+B1(1);
ag2=(katman1(1)*w1(1,2))+(katman1(2)*w1(2,2))+B1(2);
katman2(1)=logsig(ag1);
katman2(2)=logsig(ag2);
ag3=(katman2(1)*w2(1,1))+(katman2(2)*w2(2,1))+B2(1);
katman3(1)=logsig(ag3);

S3=(cikis-katman3(1))*katman3(1)*(1-katman3(1));
S2(1)=katman2(1)*(1-katman2(1))*(S3*w2(1,1));
S2(2)=katman2(2)*(1-katman2(2))*(S3*w2(2,1));

deg_w2(1)=(a*katman2(1)*S3)+(b*deg_w2(1));
deg_w2(2)=(a*katman2(2)*S3)+(b*deg_w2(2));
deg_B2=(a*S3)+(b*deg_B2);
deg_w1(1,1)=(a*katman1(1)*S2(1))+(b*deg_w1(1,1));
deg_w1(1,2)=(a*katman1(1)*S2(2))+(b*deg_w1(1,2));
deg_w1(2,1)=(a*katman1(2)*S2(1))+(b*deg_w1(2,1));
deg_w1(2,2)=(a*katman1(2)*S2(2))+(b*deg_w1(2,2));
deg_B1(1)=(a*S2(1))+(b*deg_B1(1));
deg_B1(2)=(a*S2(2))+(b*deg_B1(2));

w1=w1+deg_w1;
w2=w2+deg_w2;
B1=B1+deg_B1;
B2=B2+deg_B2;
end