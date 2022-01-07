%  ==================================================
%  startup.m
%  ==================================================
%  DESCRIPTION 
%  My personal setup for a MATLAB session.
%  __________________________________________________
%  Miguel Ayala, 06-Jan-2022.
%  ==================================================


%%% Add Research folder to search path for the current session
addpath(genpath('~/Research'))

%%% Move to Research folder
cd ~
cd Research

%%% Update Repos (Bash-zsh script)
system('sh ~/Documents/MATLAB/Matlab-setup/UpdateRepos.sh') ;

%%% Plotting stuff
set(0, 'DefaultLineLineWidth' , 2, ...
       'defaultaxesfontsize'  ,12, ...
       'defaultaxeslinewidth' , 7, ...
       'defaultpatchlinewidth', 7);
       
%%% Start Intlab
% addpath ('~/Documents/MATLAB/Intlab_V11')
% startintlab

       
  
