function [magH, Angle] = bandPass(f0, BW, C, pt)
% Calculate W0
W0 = 2*pi*f0;
% Calculate inductor
L = 1/((W0^2)*C);
% Calculate quality
Q = f0/BW;
% Calculate resistor
R = (1/Q) * sqrt(L/C);
% Calculate cutoff Frequecy
Wc1 = -1/(2*R*C) + sqrt((1/(2*R*C))^2 + 1/(L*C));
Wc2 = 1/(2*R*C) + sqrt((1/(2*R*C))^2 + 1/(L*C));

W = linspace(Wc1/100, Wc2*100, 10000);
% Transfer function
H = ((1/(R*C))*1i*W)./((1i*W).^2 + (1/(R*C))*(1i*W) + 1/(L*C));

% find the magnitude in dB
magH = 20*log10(abs(H));
subplot(211);
semilogx(W,magH)
xlabel('Frequency(W)')
ylabel('dB')
title('Magnitude |H(jW)|')
grid on
% find the angle in degree
Angle = angle(H) *(180/pi);
subplot(212);
semilogx(W,Angle)
xlabel('Frequency(W)')
ylabel('degree')
title('Phase Response')
grid on
end

