%script m-file: graph_limits.m
%
%Function used to plot crossing of contour of a given function
%
%Authors: Jakub Pasoñ, Hubert Hanusiak; 14/12/2019
%Modified: Jakub Pasoñ, Hubert Hanusiak; 14/12/2019

function [fzlimits] = graph_limits(fun,order)
    fzmax = order*max(abs(fun),[],'all')/(order^order);
    fzmin = order*min(abs(fun),[],'all')/(order^order);
    if fzmax<50
       fzmax = 50;
    end
    fzlimits(1) = fzmin;
    fzlimits(2) = fzmax;
end