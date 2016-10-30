function sig_f = minMax(sig_,w)
sig_f = zeros(1,numel(sig_));
for i = round(w/2):numel(sig_)-w
    wind = sig_(i:w);
    wind = sort(wind);
    sig_f(i) = (min(wind)+max(wind))/2;
    w=w+1;
end
end

