%%
clear;
close all;
clc;

%% inputs 
%  n = 15; k = 10; p = 0.015;
%  n = 15; k = 10; p = 0.1;
%  n = 15; k = 10; p = 0.45;

%  n = 20; k = 10; p = 0.015;
%  n = 20; k = 10; p = 0.1;
%  n = 20; k = 10; p = 0.45;

%% case 1
n = 15; k = 10; p = 0.015;
r=1;                    % flagging constant
rate1 = k/n;
channel_capacity_1 = 1 -  (p*log(1/p) + (1-p)*log(1/(1-p)))/log(2);

codeword = dec2bin(randperm(2^n,2^k))- '0';

%codeword = ones(2^k,n);
% we want a 2^k codewords.

% codeword(3,3) = 0;  
% A = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
% B = [1 1 0 1 1 1 1 1 1 1 1 1 1 1 1];
% if (A == codeword(3,:))
%     codeword(3,:) = B;
% end 

% flag = 0;             //complexity of this approach is very high
% for l=1:2^k
% 
%     while(1)
%         temp = randi([0,1] , 1,n);
%         for m=1:l-1
%             if(codeword(m,:) == temp)
%                 flag = 1;
%             end
%         end
%         if(flag ==0)
%             break;
%         end
%     end
%     codeword(l,:) = temp;
% end

E = 0;                
N = 2000;              
for q=1:N
    indicator = 0;
    randomCodeWord = codeword(randperm(2^k,1),:);
    errorbits = rand(size(randomCodeWord)) < p;
    y = randomCodeWord;
    y(errorbits) = 1 - y(errorbits); 
    distance = mindis(codeword,n,k,y); 
    [ele,pos] = min(distance);
    decoded = codeword(pos,:);
    if(ele ~= 0)
        indicator = 1;
    end
    E = E + indicator;
end

P_error(r) = E/N;


%% case 2
n = 15; k = 10; p = 0.1;
channel_capacity_2 = 1 -  (p*log(1/p) + (1-p)*log(1/(1-p)))/log(2);
r=r+1;
rate2 = k/n;
codeword = dec2bin(randperm(2^n,2^k))- '0';

E = 0;                
N = 2000;              
for q=1:N
    indicator = 0;
    randomCodeWord = codeword(randperm(2^k,1),:);
    errorbits = rand(size(randomCodeWord)) < p;
    y = randomCodeWord;
    y(errorbits) = 1 - y(errorbits); 
    distance = mindis(codeword,n,k,y); 
    [ele,pos] = min(distance);
    decoded = codeword(pos,:);
    if(ele ~= 0)
        indicator = 1;
    end
    E = E + indicator;
end
P_error(r) = E/N;

%% case 3
n = 15; k = 10; p = 0.45;
channel_capacity_3 = 1 -  (p*log(1/p) + (1-p)*log(1/(1-p)))/log(2);
r=r+1;
rate3 = k/n;
codeword = dec2bin(randperm(2^n,2^k))- '0';

E = 0;                
N = 2000;              
for q=1:N
    indicator = 0;
    randomCodeWord = codeword(randperm(2^k,1),:);
    errorbits = rand(size(randomCodeWord)) < p;
    y = randomCodeWord;
    y(errorbits) = 1 - y(errorbits); 
    distance = mindis(codeword,n,k,y); 
    [ele,pos] = min(distance);
    decoded = codeword(pos,:);
    if(ele ~= 0)
        indicator = 1;
    end
    E = E + indicator;
end
P_error(r) = E/N;

%% case 4
n = 20; k = 10; p = 0.015;
channel_capacity_4 = 1 -  (p*log(1/p) + (1-p)*log(1/(1-p)))/log(2);
r=r+1;
rate4 = k/n;
codeword = dec2bin(randperm(2^n,2^k))- '0';

E = 0;                
N = 2000;              
for q=1:N
    indicator = 0;
    randomCodeWord = codeword(randperm(2^k,1),:);
    errorbits = rand(size(randomCodeWord)) < p;
    y = randomCodeWord;
    y(errorbits) = 1 - y(errorbits); 
    distance = mindis(codeword,n,k,y); 
    [ele,pos] = min(distance);
    decoded = codeword(pos,:);
    if(ele ~= 0)
        indicator = 1;
    end
    E = E + indicator;
end
P_error(r) = E/N;

%% case 5
n = 20; k = 10; p = 0.1;
channel_capacity_5 = 1 -  (p*log(1/p) + (1-p)*log(1/(1-p)))/log(2);
r=r+1;
rate5 = k/n;
codeword = dec2bin(randperm(2^n,2^k))- '0';

E = 0;                
N = 2000;              
for q=1:N
    indicator = 0;
    randomCodeWord = codeword(randperm(2^k,1),:);
    errorbits = rand(size(randomCodeWord)) < p;
    y = randomCodeWord;
    y(errorbits) = 1 - y(errorbits); 
    distance = mindis(codeword,n,k,y); 
    [ele,pos] = min(distance);
    decoded = codeword(pos,:);
    if(ele ~= 0)
        indicator = 1;
    end
    E = E + indicator;
end
P_error(r) = E/N;

%% case 6
n = 20; k = 10; p = 0.45;
channel_capacity_6 = 1 -  (p*log(1/p) + (1-p)*log(1/(1-p)))/log(2);
r=r+1;
rate6 = k/n;
codeword = dec2bin(randperm(2^n,2^k))- '0';

E = 0;                %
N = 2000;             % 
for q=1:N
    indicator = 0;
    randomCodeWord = codeword(randperm(2^k,1),:);
    errorbits = rand(size(randomCodeWord)) < p;
    y = randomCodeWord;
    y(errorbits) = 1 - y(errorbits); 
    distance = mindis(codeword,n,k,y); 
    [ele,pos] = min(distance);
    decoded = codeword(pos,:);
    if(ele ~= 0)
        indicator = 1;
    end
    E = E + indicator;
end
P_error(r) = E/N;

%% part 4
figure(1);
title('Probability of Error')
bar(P_error);

%% Results

% we can see as the value of p inreases for a particular value of k,n The
% probability of error must increase. which we can see in
% (case1,case2,case3) and also in (case4,case5,case6)

