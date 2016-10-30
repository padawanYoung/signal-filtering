function [ fmmS1,fmmS2,fmmS3,fmmS4 ] = minMaxQuality( s1_,s2_,s3_,s4_,w)
    fmmS1 = minMax(s1_,w);
    fmmS2 = minMax(s2_,w);
    fmmS3 = minMax(s3_,w);
    fmmS4 = minMax(s4_,w);

end

