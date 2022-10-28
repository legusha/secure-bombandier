service tor status
echo $1 $2 $3
proxychains docker run -ti --rm alpine/bombardier -c $2 -d $3 -l $1

