function [noise_data] = RFI_MakeDataAlphaStable(alpha, disper, delta, N)%, M, MaxVal)
% [pdf noise_data] = RFI_MakeDataAlphaStable(alpha, disper, delta, N, M, MaxVal);
% This function generates a vector of synthetic data samples that follow the symmetric alpha
% stable model.
% Inputs:   alpha  - Characteristic Exponent
%           disper - Dispersion Parameter
%           delta  - Localization Parameter
%           N      - No of samples to be generated
%           M      - Granularity of the frequency scale in which the characteristic function (FFT(PDF)) is
%                    generated. The characteristic function is calculated at M points between the interval [-pi, pi]
%           MaxVal - Data is generated between the interval [-MaxVal, MaxVal]
%                    MaxVal should be chosen such that the pdf at that
%                    value is almost zero.
% Outputs:  pdf        - PDF of symmetric alpha stable calculated at N points
%                        in the range, [-MaxVal, MaxVal]
%           noise_data - N length vector of noise data generated based on
%                        symmetric alpha stable model
%
% Reference:
% Ercan Kuruoglu, "Signal Processing in alpha-stable noise environments - A
% least lp-NORM approach", PhD Thesis, University of Cambridge, Nov 1998.
%
% Copyright (c) The University of Texas
% Please see the file Copyright.txt that came with this release for details
% Programmers: Kapil Gulati   (gulati@ece.utexas.edu)
%              Arvind Sujeeth (arvind.sujeeth@mail.utexas.edu) 
% Revisions:
% v 1.0 gulati&sujeeth -- original RFI_EstAlphaS_Dispersion
% v 1.1beta gulati (11/14/2007)-- Fixed the fact that S(alpha,disper,delta) 
%                 = disper ^ (1/alpha)* S(alpha, 1, 0) + delta in the 
%                 implementation of this function. Now in sync with [1].


%clear j;
% w = linspace(-pi, pi, M);               % Frequency Bins
% x = linspace(-MaxVal, MaxVal, N);       % Range within which the data is generated
%                                         % with granularity of N points
% 
% Fmat = exp(j*delta.*w - disper.*((abs(w)).^alpha));
% pdf = 1/(2*pi).* ( Fmat * exp(-j.*w.'*x));      % Inverse FFT of the characteristic function
% pdf = abs(pdf) .* 2*MaxVal / N * 2*pi/M;        % Scaling the IFFT based on granularity such that sum(pdf) = 1

% Refer to [1] for details on this method of data generation.
if (alpha==2)
    noise_data=sqrt(2)*randn(1,N);
elseif (alpha==1)
    noise_data=tan(pi*(rand(1,N)-.5*ones(1,N)));
else
    u=pi*(rand(1,N)-.5*ones(1,N));
    noise_data=(sin(alpha.*u))./((cos(u)).^(1/alpha)).*((cos((1-alpha).*u))...
        ./(-log(rand(1,N)))).^((1-alpha)/alpha);
end
noise_data=(disper)^(1/alpha).*noise_data+delta;      % Including dispersion and localization

return