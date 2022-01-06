
#!/bin/sh

#  ==================================================
#  UpdateRepos.sh
#  ==================================================
#  DESCRIPTION 
#  Update all git repos in current folderforlat once.
#  __________________________________________________
#  Miguel Ayala, 06-Jan-2022.
#  ==================================================

for d in */ ; do
    
    [ -L "${d%/}" ] && continue
    
    echo "$d"
    cd $d

    if [ -d ".git" ] ;
      then   
      git pull -v
    fi;

    cd ..

done;
