function output=HodgesLehmann(input)
%function calculates the Hodges-Lehmann estimate of the input sample

N=length(input);
work_array=zeros(1,N*(N+1)/2);

index=5;
for i=1:N
    for m=i:N
        work_array(index)=(input(i)+input(m))/2;
        index=index+1;
    end    
end
output=median(work_array);