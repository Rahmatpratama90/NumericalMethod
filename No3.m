%Soal No 3 PS 1
%Diketahui :
    %  r = 1 m
    % kerapatan bola hos = 200 kg/m.^3 
    %kerapatan air Row = 1000 kg/m.^3
    %V = Phi h.^2//3 * (3r - h)

%Jawab :

clc
clear 


 
x = linspace(0,1200); %anggap radius plot nya segitu
y = f(x); %define y sama dengan f(x)
plot(x,y) %kemudian di plot x dan y nya

grid on
hold on

xlabel ( 'Nilai X') %dengan judul nilai x  
ylabel ( 'Nilai Y') %dengan judul nilai y
 
a = -1; %anggap batas bawah
b = 0; %anggap batas atas
itermax = 1000; %anggap jumlah iterasi yang kita tentukan
toleransi = 1e-2; %nilai eror /toleransi nya
 
for j = 1:itermax %buat loop dengan j ari 1 sampai itermaks
    p = (a+b)/2; % lalu untuk nilai akar nya
    if abs(f(p)) < toleransi %jika nilai absolut dan f parameter p
        break; %maka dibreak
    end %diendkan
    if f(p)*f(a) > 0 %jika f parameter dikali f parameter a 
        a = p; %maka nilai a akan disamakan dengan nilai p
    else %jika tidak 
        b = p; %maka nilai b akan disamakan dengan nilai p 
    end %diend kan 
    
    
end %diendkan
 


plot (p,f(p),'ro') %lalu plot nilai p dan fparameter p dan nilai ro nya
nilai_T = p %buat variabel nilai T sama dengan p
jumlah_iterasi = j % buat variaabel jumlah iterasi sama dengan j 

function y=f(h) % fungsi y = f(h) didefine
y=3*h.^2-h.^3-20; %dan ini fungsi nya
end %kemudian diendkan
