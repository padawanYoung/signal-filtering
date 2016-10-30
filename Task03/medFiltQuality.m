function [ fMedS1,fMedS2,fMedS3,fMedS4 ] = medFiltQuality( s1_,s2_,s3_,s4_,w )
    fMedS1 = medFilt(s1_,w);
    fMedS2 = medFilt(s2_,w);
    fMedS3 = medFilt(s3_,w);
    fMedS4 = medFilt(s4_,w);

end

