function sig_f = medFilt(sig_,w)
sig_f = zeros(1,numel(sig_));
n=w;
for i = round(w/2):numel(sig_)-w
    wind = sig_(i:w);
    wind = sort(wind);
    sig_f(i) = wind(round(n/2));
    w=w+1;
end
end

