
function MyLiveScript(name)

  %%% Input without .mlx should work 
  %%% It need to specify where do we create the file as second input.
  copyfile('Matlab-setup/LiveScriptTemplate.mlx',name)
  edit(name)
end  
