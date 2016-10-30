function sig_f = alpaCut(sig_,w,a)
sig_f = zeros(1,numel(sig_));
del=round(w*a);
warning('off','all')
for i = round(w/2):numel(sig_)-w
    wind = sig_(i:w);
    wind = sort(wind);
    sig_f(i) = sum(wind(del/2:numel(wind)-del/2))/(numel(wind)-del);
    w=w+1;
end
end
