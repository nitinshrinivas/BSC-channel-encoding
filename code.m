%% inputs 
n = 15; k = 10; p = 0.015;
%  n = 15; k = 10; p = 0.1;
%  n = 15; k = 10; p = 0.45;
%  n = 20; k = 10; p = 0.015;
%  n = 20; k = 10; p = 0.1;
%  n = 20; k = 10; p = 0.45;

%% part a

rate = k/n;
codeword = dec2bin(randperm(2^n,2^k));

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



%% part b


