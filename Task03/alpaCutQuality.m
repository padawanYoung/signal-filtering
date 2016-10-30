function [ fAS1,fAS2,fAS3,fAS4 ] = alpaCutQuality( s1_,s2_,s3_,s4_,w,alphaFlt)
    fAS1 = alpaCut(s1_,w,alphaFlt);
    fAS2 = alpaCut(s2_,w,alphaFlt);
    fAS3 = alpaCut(s3_,w,alphaFlt);
    fAS4 = alpaCut(s4_,w,alphaFlt);
end

