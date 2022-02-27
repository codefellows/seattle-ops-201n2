#!/bin/bash

# delete everything
removeDirs(){

    rm -R dir*
}

# make directories
makeDirs(){
    
    read -a dirs -p "Enter directories: "
    mkdir ${dirs[0]}
    mkdir ${dirs[1]}
    mkdir ${dirs[2]}
    mkdir ${dirs[3]}
}

# create files
createFiles(){

    for i in {0..3}
    do
        touch ${dirs[i]}/File$i.txt
        echo "Sample Test $i" > ${dirs[i]}/File$i.txt
    done
}

# echo file contents
readFiles(){

    y=0
    while [ $y -le 3 ];
    do
        file="${dirs[$y]}/File$y".txt
        echo $file "contains: "
        cat $file
        ((y++))
    done
}

main() {
    
    removeDirs
    makeDirs
    createFiles
    readFiles
}
runAgain() {
    
    while :
    do
    echo "Would you like to run this program again?" 
    echo "Enter 1 for YES"
    echo "Enter 2 for NO"
    read ans
    if [[ $ans -eq 1 ]]
    then
        main
    else
        echo "Goodbye"
        break
    fi
    
done
}

main

runAgain

