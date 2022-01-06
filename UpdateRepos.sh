
#!/bin/sh

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
