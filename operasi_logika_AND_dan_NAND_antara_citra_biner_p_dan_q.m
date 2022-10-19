%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Operasi Logika AND dan NAND %%
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

%Citra_and = zeros(N,M);
%Citra_nand = zeros(N,M);

for n = 1 : N
    for m = 1 : M
        % Citra AND
        % cara 1
        % Citra_and(n,m) = P(n,m) & Q(n,m);
        
        % cara 2
        %if (P(n,m) == 1 && Q(n,m) == 1)
        %    Citra_and(n,m) = 1;
        %else Citra_and(n,m) = 0;
        %end
        
        % cara 3
        Citra_and(n,m) = bitand(P(n,m), Q(n,m));
        
        
        % Citra NAND
        % cara 1
        % Citra_nand(n,m) = ~(P(n,m) & Q(n,m));
        
        % cara 2
        %if (P(n,m) == 1 && Q(n,m) == 1)
        %    Citra_nand(n,m) = 0;
        %else Citra_nand(n,m) = 1;
        %end
        
        % cara 3
        Citra_nand(n,m) = ~bitand(P(n,m), Q(n,m));
        
    end
end

figure(3), imshow(Citra_and);
figure(4), imshow(Citra_nand);

% cara praktis
Citra_and1 = bitand(P,Q);
Citra_nand1 = ~bitand(P,Q);

figure(5), imshow(Citra_and1);
figure(6), imshow(Citra_nand1);