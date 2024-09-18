# -------------------------------------------------------
# cd_up: go to parent directory

cd_up() {

    if [ -z $LWD ]; then
        LWD=$PWD
    fi
    
    if [ $PWD = '/' ]; then
        echo "At root!"
        return 1
    fi

    # We need an integer for the next step
    declare -i PWD_LENGTH=$(wc -c <<< $PWD)
    declare -i LWD_LENGTH=$(wc -c <<< $LWD)

    PWD_LENGTH=$(($PWD_LENGTH - 1))
    LWD_LENGTH=$(($LWD_LENGTH - 1))

    # Cut the longest path to fit the shortest
    if [ $PWD_LENGTH -gt $LWD_LENGTH ]; then
        PWD0=$(cut -c -$LWD_LENGTH <<< $PWD)
        LWD0=$LWD
    elif [ $PWD_LENGTH -lt $LWD_LENGTH ]; then
        PWD0=$PWD
        LWD0=$(cut -c -$PWD_LENGTH <<< $LWD)
    fi

    # If paths are not equal: reset $LWD
    if [[ $LWD0 != $PWD0 ]]; then
        LWD=$PWD
    fi

    # Go up one directory 
    cd ..

}


# -------------------------------------------------------
# cd_down: go (back) down one directory - only works if you used `cd_up` prior to using this.

cd_down() {

    if [ -z $LWD ]; then
        echo 'Nowhere to go back down to'
        return 1
    elif [ $PWD = $LWD ]; then
        echo 'At bottom!'
        return 1
    fi

    if [ ! $PWD = '/' ]; then
        cd $(awk -F '/' '{ print $2 }' <<< ${LWD#$PWD})
    else
        cd $(awk -F '/' '{ print $1 }' <<< ${LWD#$PWD})
    fi

}


# -------------------------------------------------------
# cd into newest directory
#  cdn 1: cd into newest directory
#  cdn 2: cd into second newest directory

cd_newest() {

    if [ -z $1 ]; then
        n=1
    else
        n=$1
    fi

    local dirs=$(ls -1FArt | grep "/$" | tail -n $n | head -n 1)

    if [ ! -z $dirs ]; then
      cd $dirs
    else
      echo "At bottom! No more directories to go into!"
    fi
} 

alias cdn=cd_newest
