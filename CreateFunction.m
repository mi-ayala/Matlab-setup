function CreateFunction(name)
%  ==================================================
%  CreateFunction
%  ==================================================
%  DESCRIPTION 
%  Creates name.m in the current folder using my 
%  personal template for functions.
%  __________________________________________________
%  Miguel Ayala, 06-Jan-2022.
%  ==================================================

     %%% Check whether function already exists
    % if ~isempty(name)
    %     fxnCheck = which(name);
    %     if ~isempty(fxnCheck)
    %         error('%s already exists: %s',name,fxnCheck)
    %     end
    % end

  
   
    %%% File creation and template
 
    fsuffix = '.m';
    filename = fullfile(pwd,[name fsuffix]);
    fi = fopen(filename,'wt');

        n = 50;
       
        fprintf(fi,['function  ' name '(input)' '\n']);
        fprintf(fi,['%%  ' sprintf(repmat('=',1,n)) '\n' ]);
        fprintf(fi,['%%  ' name '\n' ] );
        fprintf(fi,['%%  ' sprintf(repmat('=',1,n)) '\n' ]);
        fprintf(fi,['%%  ' 'DESCRIPTION' '\n']);
        fprintf(fi,['%%  ' sprintf(repmat('_',1,n)) '\n']);
        fprintf(fi,['%%  ' 'INPUT' '\n']);
        fprintf(fi,['%%  ' sprintf(repmat('_',1,n)) '\n']);
        fprintf(fi,['%%  ' 'OUTPUT' '\n']);
        fprintf(fi,['%%  ' sprintf(repmat('_',1,n)) '\n']);
        fprintf(fi,['%%  ' sprintf('MATLAB %s',version) '\n']);
        fprintf(fi,['%%  ' 'Miguel Ayala,' ' ' date '.' '\n']);
        fprintf(fi,['%%  ' sprintf(repmat('=',1,n)) '\n' '\n']);
        fprintf(fi,'end  ' );
        fclose(fid);
       

    %%% Open file
    edit(filename);

end  
