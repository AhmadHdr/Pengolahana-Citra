%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Operasi Logika XOR dan XNOR %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;

P = imread('images/segitiga.jpeg');
P = im2bw(P, 0.1);
% P = imbinarize(P, 0.1);
figure(1), imshow(P,[]);

Q = imread('images/segitiga_kebalik.jpeg');
Q = im2bw(Q, 0.1);
% Q = imbinarize(Q, 0.1);
figure(2), imshow(Q,[]);

[N, M] = size(P);

%Citra_xor = zeros(N,M);
%Citra_xnor = zeros(N,M);

for n = 1 : N
    for m = 1 : M
        % Citra XOR
        Citra_xor(n,m) = bitxor(P(n,m), Q(n,m));
        
        % Citra XNOR
        Citra_xnor(n,m) = ~bitxor(P(n,m), Q(n,m));
        
    end
end

figure(3), imshow(Citra_xor);
figure(4), imshow(Citra_xnor);

% cara praktis
Citra_xor1 = bitxor(P,Q);
Citra_xnor1 = ~bitxor(P,Q);

figure(5), imshow(Citra_xor1);
figure(6), imshow(Citra_xnor1);