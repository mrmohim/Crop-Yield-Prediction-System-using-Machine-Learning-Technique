clc
clear all;
close all;
region = ['Cumilla   ';'Sylhet    ';'Dhaka     ';'Mymensingh';'Faridpur  ';'Jessore   ';'Khulna    ';'Dinajpur  ';'Rajshahi  ';'Rangpur   '];

%%
load('data.mat');

in1 = input('Enter Temperature: ');
in2 = input('Enter Rainfall: ');
in3 = input('Enter Humidity: ');

%% KNN
KNNproduction = zeros(10,6);
production_KNN = strings(10,7);
x = 0;
id = 0;

for i = 1 : 10 : 100
    mn = 10000;
    x = x + 1;
    for j = i : 1 : (i+9)
        temp = abs(data(j,1) - in1);
        rain = abs(data(j,2) - in2);
        humid = abs(data(j,3) - in3);
        ds = sqrt((temp*temp)+(rain*rain)+(humid*humid));
        if (mn > ds)
            mn = ds;
            id = j;
        end
    end
    production_KNN(x,1) = region(x,:);
    for k = 4 : 1 : 9
        KNNproduction(x,k-3) = data(id,k);
        production_KNN(x,k-2) = data(id,k);
    end
end

%% MLR
b1 = zeros(10,6);
b2 = zeros(10,6);
b0 = zeros(10,6);
MLRproduction = zeros(10,6);
production_MLR = strings(10,7);
x = 0;
for i = 1 : 10 : 100
    x1 = 0;
    x2 = 0;
    y = zeros(1,6);
    my1 = zeros(1,6);
    my2 = zeros(1,6);
    m = 0;
    x22 = 0;
    x12 = 0;
    x = x + 1;
    for j = i : 1 : (i+9)
        x12 = x12 + (data(j,1) * data(j,1));
        x22 = x22 + (data(j,2) * data(j,2));
        m = m + (data(j,1) * data(j,2));
        x1 = x1 + data(j,1);
        x2 = x2 + data(j,2);
        y(1,1) = y(1,1) + data(j,4);
        y(1,2) = y(1,2) + data(j,5);
        y(1,3) = y(1,3) + data(j,6);
        y(1,4) = y(1,4) + data(j,7);
        y(1,5) = y(1,5) + data(j,8);
        y(1,6) = y(1,6) + data(j,9);
        my1(1,1) = my1(1,1) + (data(j,1) * data(j,4));
        my1(1,2) = my1(1,2) + (data(j,1) * data(j,5));
        my1(1,3) = my1(1,3) + (data(j,1) * data(j,6));
        my1(1,4) = my1(1,4) + (data(j,1) * data(j,7));
        my1(1,5) = my1(1,5) + (data(j,1) * data(j,8));
        my1(1,6) = my1(1,6) + (data(j,1) * data(j,9));
        my2(1,1) = my2(1,1) + (data(j,2) * data(j,4));
        my2(1,2) = my2(1,2) + (data(j,2) * data(j,5));
        my2(1,3) = my2(1,3) + (data(j,2) * data(j,6));
        my2(1,4) = my2(1,4) + (data(j,2) * data(j,7));
        my2(1,5) = my2(1,5) + (data(j,2) * data(j,8));
        my2(1,6) = my2(1,6) + (data(j,2) * data(j,9));
    end
    x12 = x12 - ((x1 * x1) / 10);
    x22 = x22 - ((x2 * x2) / 10);
    x1x2 = m - ((x1 * x2) / 10);
    cn = 4;
    production_MLR(x,1) = region(x,:);
    for k = 1 : 1 : 6
        x1y = my1(1,k) - ((x1 * y(1,k)) / 10);
        x2y = my2(1,k) - ((x2 * y(1,k)) / 10);
        b1(x,k) = ((x22 * x1y) - (x1x2 * x2y)) / ((x12 * x22) - (x1x2 * x1x2));
        b2(x,k) = ((x12 * x2y) - (x1x2 * x1y)) / ((x12 * x22) - (x1x2 * x1x2));
        b0(x,k) = (y(1,k) / 10) - (b1(x,k) * (x1 / 10)) - (b2(x,k) *(x2 / 10));
        MLRproduction(x,k) = b0(x,k) + (b1(x,k) * in1) + (b2(x,k) * in2);
        production_MLR(x,k+1) = MLRproduction(x,k);
        cn = cn + 1;
    end
end

%%