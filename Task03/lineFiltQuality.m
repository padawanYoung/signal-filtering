function [ flS1,flS2,flS3,flS4 ] = lineFiltQuality( s1_,s2_,s3_,s4_,w )
    flS1 = lineFilt(s1_,w);
    flS2 = lineFilt(s2_,w);
    flS3 = lineFilt(s3_,w);
    flS4 = lineFilt(s4_,w);

end

