function [ I_ ] = med2D( I,H )
h = ones (H,H);
sizeWind = size (h);
allocate = size (I);
edgex = floor(sizeWind(1)/2);
edgey = floor(sizeWind(2)/2);
W=zeros(1,5);
for x=edgex:(allocate(1)-edgex)-1;
    for y=edgex:(allocate(2)-edgey)-1;
        for fx=1:sizeWind(1);
            for fy=1:sizeWind(2);
                W (fx,fy)=I((x+fx-edgex),(y+fy-edgey));
            end
        end
        I_(x,y)=median(W(:));
    end
end
I_=uint8(I_);
end

