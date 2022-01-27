
function CreateLiveScript(name)
%  ==================================================
%  CreateLiveScript
%  ==================================================
%  DESCRIPTION 
%  Creates name.mlx in the current folder 
%  using my personal template for
%  live scripts.
%  __________________________________________________
%  Miguel Ayala, 06-Jan-2022.
%  ==================================================

%   fsuffix = '.mlx';
%   filename = fullfile(pwd,[name fsuffix]);

  copyfile('~/Documents/MATLAB/Matlab-setup/LiveScriptTemplate.mlx',name)
  edit(name)
end  
