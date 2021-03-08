#!/bin/sh

[ $CCC_SYMBOL ] && symbol=$CCC_SYMBOL
[ -z $CCC_SYMBOL ] && symbol=""
[ $1 ] && symbol="$1"

printf "\n"

for i in {0..7}; do
    printf ' \033[3%sm%s \033[m' "$i" "$symbol"
done

printf "\n"

for i in {0..7}; do
    printf ' \033[9%sm%s \033[m' "$i" "$symbol"
done


printf "\n\n"
