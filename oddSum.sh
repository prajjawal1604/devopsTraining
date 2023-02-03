fun(){
sum=0

for i in $@
do
        if (( $i % 2 == 1 ))
        then
        (( sum = sum + $i ))
        fi
done

echo $sum

}

fun $@
