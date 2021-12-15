%%Lab 9
%Garret Snyder

clear
clc

%%Problem 1
money=5500;
age=0;
while money<=1000000;
    money=money+(money*.06);
    money=money+5500;
    age=age+1;
end;
probOne6Pct=age
money2=5500;
age2=0;
while money2<=1000000;
    money2=money2+(money2*.01);
    money2=money2+5500;
    age2=age2+1;
end;
probOne1Pct=age2

%%Problem 2
for bInt=1:10;
    for gRate=1:10;
        b(bInt,gRate)=(100*bInt) * exp(10*(.02*gRate));
    end;
end;
bacteria=round(b);
bacteria;
probTwoA=bacteria(10,10)-bacteria(1,10)
probTwoB=sum(bacteria(2,1:10))

%%Problem 3
runs=0;
rolled=0;
while rolled<6;
    rolled=randi(6);
    runs=runs+1;
end;
probThreeA=runs
for i=1:5;
    rolls(1,i)=randi(6);
end;
probThreeB=sum(rolls)

days=0;
sumOfFive=0;
while sumOfFive<30;
    for i=1:5;
        rolls(1,i)=randi(6);
    end;
    sumOfFive=sum(rolls);
    days=days+1;
end;
probThreeC=days

%%Problem 4
data=xlsread('Lab 7 Data 5.xlsx');
max1=0;
max2=0;
max3=0;
for i=1:570;
    accel1=data(i,6);
    if accel1>max1;
        max1=accel1;
    end;
end;
for i=1:632;
    accel2=data(i,15);
    if accel2>max2;
        max2=accel2;
    end;
end;
for i=1:663;
    accel3=data(i,24);
    if accel3>max3;
        max3=accel3;
    end;
end;
probFour=[max1,max2,max3]