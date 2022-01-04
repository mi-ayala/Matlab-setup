function MyFunction(fxnname)

 %%% Check whether function already exists
    % if ~isempty(fxnname)
    %     fxnCheck = which(fxnname);
    %     if ~isempty(fxnCheck)
    %         error('%s already exists: %s',fxnname,fxnCheck)
    %     end
    % end

  
   
    %%% File creation
 
    fsuffix = '.m';
    filename = fullfile(pwd,[fxnname fsuffix]);
   
        fid = fopen(filename,'wt');

        n = 50;
       
        fprintf(fid,['function  ' fxnname '(input)' '\n']);
        fprintf(fid,['%%  ' sprintf(repmat('=',1,n)) '\n' ]);
        fprintf(fid,['%%  ' fxnname '\n' ] );
        fprintf(fid,['%%  ' sprintf(repmat('=',1,n)) '\n' ]);
        fprintf(fid,['%%  DESCRIPTION' '\n']);
        fprintf(fid,['%%  ' sprintf(repmat('_',1,n)) '\n']);
        fprintf(fid,['%%  ' 'INPUT' '\n']);
        fprintf(fid,['%%  ' sprintf(repmat('_',1,n)) '\n']);
        fprintf(fid,['%%  ' 'OUTPUT' '\n']);
        fprintf(fid,['%%  ' sprintf(repmat('_',1,n)) '\n']);
        fprintf(fid,['%%  ' sprintf('MATLAB %s',version) '\n']);
        fprintf(fid,['%%  ' 'Miguel Ayala,' ' ' date '.' '\n']);
        fprintf(fid,['%%  ' sprintf(repmat('=',1,n)) '\n' '\n']);
        fprintf(fid,'end  ' );
        fclose(fid);
       

    %%% Open file
    edit(filename);

end  
