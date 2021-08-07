function distance = mindis(codeword,n,k,y)
    distance = zeros(1,2^k);
    for z=1:2^k
        dist = 0;
        temp = abs(codeword(z,:) - y);
        for q = 1:n
            if(temp(q) == 1)
                dist = dist + 1;
            end
        end
        distance(z) = dist;
    end
end
