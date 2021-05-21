function countFor(){
    for file in $1; do
        (echo $file; grep for $file | wc -w) > temp;
    done
    readarray array < temp
    x=${array[0]}${array[1]}
    echo $x > temp
    echo $x
}
y=$(countFor main.c)
echo $y
