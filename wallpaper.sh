#!/bin/bash
Dir=/home/klsimps/Pictures/
function main(){
    #randomly select picture from picture directory
    #call pywal on that picture
    #wal -i /Home/klsimps/Pictures/$Pictures
    N=0
    ls_out=$(ls $Dir)
    declare -a pics

    for i in $ls_out; do
        pics[$N]="$i"
        let "N = $N + 1"
    done
    num=$(($RANDOM % $N))
    Picture=${pics[$num]}
    wal -i $Dir$Picture > /dev/null
}
main




