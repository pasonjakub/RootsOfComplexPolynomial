%script m-file: plotting_contour.m
%
%Function used to plot crossing of contour of a given function
%
%Authors: Jakub Pasoñ, Hubert Hanusiak; 14/12/2019
%Modified: Jakub Pasoñ, Hubert Hanusiak; 14/12/2019

function  plotting_contour(xdomain,ydomain,fun,f_root)
    v =[0,0.00001];
    
    figure(1); clf;
        contour(xdomain,ydomain,real(fun),v,'r'); hold on; grid on;                          %graphical roots verification
        contour(xdomain,ydomain,imag(fun),v,'b');
        plot(real(f_root),imag(f_root),'k.','Markersize',18); 
        legend('Real','Imaginary','Roots');
        title('Roots');
        xlabel('Re');ylabel('Im');
end