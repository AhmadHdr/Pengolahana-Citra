%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Operasi Logika OR dan NOR %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

%Citra_or = zeros(N,M);
%Citra_nor = zeros(N,M);

for n = 1 : N
    for m = 1 : M
        % Citra OR
        % cara 1
        % Citra_or(n,m) = P(n,m) | Q(n,m);
        
        % cara 2
        %if (P(n,m) == 1 || Q(n,m) == 1)
        %    Citra_or(n,m) = 1;
        %else Citra_or(n,m) = 0;
        %end
        
        % cara 3
        Citra_or(n,m) = bitor(P(n,m), Q(n,m));
        
        
        % Citra NOR
        % cara 1
        % Citra_nor(n,m) = ~(P(n,m) | Q(n,m));
        
        % cara 2
        %if (P(n,m) == 1 || Q(n,m) == 1)
        %    Citra_nor(n,m) = 0;
        %else Citra_nor(n,m) = 1;
        %end
        
        % cara 3
        Citra_nor(n,m) = ~bitor(P(n,m), Q(n,m));
        
    end
end

figure(3), imshow(Citra_or);
figure(4), imshow(Citra_nor);

% cara praktis
Citra_or1 = bitor(P,Q);
Citra_nor1 = ~bitor(P,Q);

figure(5), imshow(Citra_or1);
figure(6), imshow(Citra_nor1);